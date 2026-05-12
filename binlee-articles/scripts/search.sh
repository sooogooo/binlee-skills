#!/bin/bash
# 李滨先生文章库 - 文章搜索脚本

DATA_DIR="$HOME/drli_articles"
INDEX_FILE="$HOME/drli_articles_index.json"

search_articles() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "用法: search_articles <关键词>"
        return 1
    fi

    results=$(grep -l "$query" "$DATA_DIR"/*.json 2>/dev/null | head -20)
    if [ -z "$results" ]; then
        echo "未找到包含 '$query' 的文章"
        return 0
    fi

    echo "找到 $(echo "$results" | wc -l) 篇相关文章:"
    echo "----------------------------------------"
    for f in $results; do
        slug=$(basename "$f" .json)
        title=$(cat "$f" | python3 -c "import json,sys; print(json.load(sys.stdin)['title'])" 2>/dev/null)
        echo "- $title"
    done
}

list_articles() {
    echo "文章索引 (共 549 篇):"
    echo "================================"
    cat "$INDEX_FILE" | python3 -c "
import json,sys
articles=json.load(sys.stdin)
for i,a in enumerate(articles,1):
    print(f\"{i}. {a['title']} | {a['date']}\")
" 2>/dev/null | head -50
    echo "..."
    echo "完整列表请查看 $INDEX_FILE"
}

case "$1" in
    search)
        search_articles "$2"
        ;;
    list)
        list_articles
        ;;
    *)
        echo "李滨先生文章库工具集"
        echo "Usage: $0 {search|list} [关键词]"
        ;;
esac