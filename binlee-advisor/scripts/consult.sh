#!/bin/bash
# 医美行业顾问 - 智能咨询脚本

DATA_DIR="$HOME/drli_articles"
INDEX_FILE="$HOME/drli_articles_index.json"

# 搜索相关文章
search_related() {
    local query="$1"
    local limit="${2:-5}"

    results=$(grep -l "$query" "$DATA_DIR"/*.json 2>/dev/null | head -"$limit")
    echo "$results"
}

# 获取文章核心观点
get_article_summary() {
    local slug="$1"

    if [ ! -f "$DATA_DIR/$slug.json" ]; then
        echo "文章不存在: $slug"
        return 1
    fi

    python3 -c "
import json
with open('$DATA_DIR/$slug.json') as f:
    d = json.load(f)
    print('=== ' + d['title'])
    print('日期: ' + d['date'])
    print()
    # 输出前1500字作为摘要
    content = d.get('content', '')
    print(content[:1500] if len(content) > 1500 else content)
    print()
    print('...(详见完整文章)')
"
}

# 按主题列出相关文章
list_by_topic() {
    local topic="$1"

    case "$topic" in
        "行业"|"趋势")
            grep -l "行业\|趋势\|市场\|发展\|未来" "$DATA_DIR"/*.json 2>/dev/null | head -10
            ;;
        "经营"|"管理")
            grep -l "经营\|管理\|运营\|品牌\|营销" "$DATA_DIR"/*.json 2>/dev/null | head -10
            ;;
        "消费"|"选择")
            grep -l "消费\|选择\|医生\|机构\|安全" "$DATA_DIR"/*.json 2>/dev/null | head -10
            ;;
        "竞争"|"公立")
            grep -l "竞争\|公立\|民营\|市场\|生存" "$DATA_DIR"/*.json 2>/dev/null | head -10
            ;;
        *)
            echo "支持的主题: 行业|经营|消费|竞争"
            ;;
    esac
}

# 搜索相关文章并显示摘要
search_and_summarize() {
    local query="$1"
    local max_results="${2:-3}"

    articles=$(grep -l "$query" "$DATA_DIR"/*.json 2>/dev/null | shuf | head -"$max_results")

    if [ -z "$articles" ]; then
        echo "未找到相关主题的文章: $query"
        return
    fi

    echo "=========================================="
    echo "找到相关主题文章 $(echo "$articles" | wc -l) 篇，以下是核心观点："
    echo "=========================================="

    for f in $articles; do
        slug=$(basename "$f" .json)
        echo ""
        echo "---"
        get_article_summary "$slug"
        echo "---"
    done
}

case "$1" in
    search)
        shift
        search_and_summarize "$@"
        ;;
    topic)
        shift
        list_by_topic "$@"
        ;;
    article)
        shift
        get_article_summary "$@"
        ;;
    *)
        echo "医美行业顾问工具集"
        echo "用法: $0 {search|topic|article} [参数]"
        ;;
esac