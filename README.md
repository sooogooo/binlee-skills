# Binlee Skills

基于李滨先生医美文章的 Claude Code Skills 集合。

## 技能列表 | Skills List

### binlee-articles

李滨先生文章库 - 提供 549 篇医美行业文章的搜索与阅读功能。

- 文章检索与查询
- 按主题分类浏览
- 内容分析支持

```bash
# 使用示例
cat ~/drli_articles/yi-mei-fu-wu-de-zhen-xiang.json
```

---

### binlee-advisor

医美行业顾问 - 为医美机构经营者和从业者提供专业咨询。

- 经营管理咨询
- 行业趋势分析
- 竞争策略建议

适用场景：
- 开一家医美诊所应该如何定位？
- 如何应对公立医美的竞争？
- 医美行业未来3年的发展趋势是什么？

---

### binlee-consumer

医美消费指南 - 为医美消费者提供专业决策支持。

- 机构选择指导
- 医生选择建议
- 风险评估与消费决策

适用场景：
- 如何选择靠谱的医美机构？
- 注射玻尿酸和胶原蛋白哪个更好？
- 术后效果不满意该怎么办？

---

## 安装 | Installation

将技能复制到 Claude Code Skills 目录：

```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Claude Code skills 目录
cp -r binlee-articles ~/.claude/skills/
cp -r binlee-advisor ~/.claude/skills/
cp -r binlee-consumer ~/.claude/skills/
```

---

## 数据来源 | Data Source

文章原文来源：[drli.beaucare.org](https://drli.beaucare.org)

文章数量：549 篇

文章主题：医美行业洞察、临床实践、经营策略、行业趋势等

---

## 许可 | License

MIT License

## 作者 | Author

李滨先生 - 医美行业专家