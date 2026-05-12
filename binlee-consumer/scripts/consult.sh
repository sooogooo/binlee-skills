#!/bin/bash
# 医美消费指南 - 消费者咨询脚本

DATA_DIR="$HOME/drli_articles"

# 搜索消费者相关的文章
search_consumer_articles() {
    local query="$1"
    local limit="${2:-5}"

    results=$(grep -l "$query" "$DATA_DIR"/*.json 2>/dev/null | head -"$limit")
    echo "$results"
}

# 获取文章内容摘要
get_article_content() {
    local slug="$1"

    if [ ! -f "$DATA_DIR/$slug.json" ]; then
        echo "文章不存在"
        return 1
    fi

    python3 -c "
import json
with open('$DATA_DIR/$slug.json') as f:
    d = json.load(f)
    print('标题:', d['title'])
    print('日期:', d['date'])
    print()
    content = d.get('content', '')
    print(content[:2000] if len(content) > 2000 else content)
"
}

# 消费者常见问题快速回答
quick_answers() {
    local question="$1"

    case "$question" in
        "机构")
            cat << 'EOF'
选择医美机构的核心检查项：

1. 基础资质核查
   ✓ 《医疗机构执业许可证》
   ✓ 诊疗科目包含医疗美容
   ✓ 有效期内

2. 环境与设备
   ✓ 手术室符合标准
   ✓ 药品/器械有中文标识
   ✓ 可扫码验真

3. 医生资质
   ✓ 《医师资格证》
   ✓ 《执业证》(美容外科/皮肤科等)
   ✓ 执业地点在本机构

4. 口碑评估
   ✓ 真实用户评价(非营销)
   ✓ 行业口碑
   ✓ 成立年限

⚠️ 警惕：超低价营销、熟人推荐、威逼利诱
EOF
            ;;
        "医生")
            cat << 'EOF'
选择医美医生的实用技巧：

1. 验证方法
   ✓ 国家卫健委官网查询执业信息
   ✓ 学术背景与专业方向
   ✓ 真实案例(非修图)

2. 沟通判断
   ✓ 是否详细了解你的需求
   ✓ 是否客观分析利弊
   ✓ 是否拒绝不合理要求

3. 负责任的表现
   ✗ 过度承诺效果
   ✗ 回避风险说明
   ✗ 催促快速决定

建议：面诊3家以上机构对比
EOF
            ;;
        "价格")
            cat << 'EOF'
医美价格判断指南：

1. 价格异常警示
   ⚠️ 远低于市场行情可能是陷阱
   ⚠️ 分解收费需警惕
   ⚠️ 隐性收费要当心

2. 合理价格参考
   - 常见项目有市场均价
   - 进口/国产材料差价大
   - 医生级别影响价格

3. 消费建议
   ✓ 要求明码标价
   ✓ 确认所有费用项目
   ✓ 签订正式合同
   ✓ 保留发票

记住：贵的不一定好，但太便宜的一定有问题
EOF
            ;;
        "风险")
            cat << 'EOF'
医美风险评估指南：

1. 项目风险等级
   低风险：光子嫩肤、简单护肤
   中风险：注射填充、激光治疗
   高风险：手术类、侵入性治疗

2. 常见风险信号
   ⚠️ 机构回避谈风险
   ⚠️ 不要求体检/病史
   ⚠️ 术后联系方式不明确

3. 自我保护措施
   ✓ 签署知情同意书
   ✓ 了解并发症应对方案
   ✓ 术后留观要求
   ✓ 紧急联系方式

出现异常及时联系机构或就医
EOF
            ;;
        "维权")
            cat << 'EOF'
医美维权指南：

1. 证据保留
   ✓ 合同、收据
   ✓ 术前术后照片
   ✓ 病历记录
   ✓ 沟通记录(微信等)

2. 处理途径
   - 协商：优先联系机构
   - 投诉：卫健委、市场监管局
   - 调解：医美协会、消协
   - 诉讼：法律途径

3. 注意事项
   ✓ 维权要趁早
   ✓ 合理诉求
   ✓ 借助专业帮助

参考李滨先生文章：《一个警示和躲不过去的3.15》
EOF
            ;;
        *)
            echo "支持快速查询: 机构|医生|价格|风险|维权"
            ;;
    esac
}

# 根据主题搜索相关文章
search_by_topic() {
    local topic="$1"

    case "$topic" in
        "选择"|"机构")
            search_consumer_articles "选择机构|医生|消费|安全" 3
            ;;
        "风险"|"安全")
            search_consumer_articles "风险|安全|并发症|事故" 3
            ;;
        "维权"|"纠纷")
            search_consumer_articles "维权|纠纷|欺诈|投诉" 3
            ;;
        "价格"|"费用")
            search_consumer_articles "价格|费用|收费|消费" 3
            ;;
        *)
            echo "支持主题: 选择|风险|维权|价格"
            ;;
    esac
}

case "$1" in
    quick)
        shift
        quick_answers "$@"
        ;;
    search)
        shift
        for f in $(search_consumer_articles "$@"); do
            slug=$(basename "$f" .json)
            echo "=== $slug ==="
            get_article_content "$slug"
            echo ""
        done
        ;;
    topic)
        shift
        search_by_topic "$@"
        ;;
    *)
        echo "医美消费指南工具集"
        echo "用法: $0 {quick|search|topic} [参数]"
        echo ""
        echo "快速查询:"
        echo "  $0 quick 机构  - 机构选择指南"
        echo "  $0 quick 医生  - 医生选择指南"
        echo "  $0 quick 价格  - 价格判断指南"
        echo "  $0 quick 风险  - 风险评估指南"
        echo "  $0 quick 维权  - 维权处理指南"
        ;;
esac