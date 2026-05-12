# Binlee Skills

基于李滨先生医美文章的 AI Terminal Skills 集合，为医美从业者和消费者提供专业咨询支持。

## 技能列表

### binlee-articles
**李滨先生文章库** - 提供 549 篇医美行业文章的搜索与阅读功能。
- 文章检索与查询
- 按主题分类浏览
- 内容分析支持

### binlee-advisor
**医美行业顾问** - 为医美机构经营者和从业者提供专业咨询。
- 经营管理咨询
- 行业趋势分析
- 竞争策略建议

适用场景：
- 开一家医美诊所应该如何定位？
- 如何应对公立医美的竞争？
- 医美行业未来3年的发展趋势是什么？
- 中小医美机构如何做好品牌营销？

### binlee-consumer
**医美消费指南** - 为医美消费者提供专业决策支持。
- 机构选择指导
- 医生选择建议
- 风险评估与消费决策

适用场景：
- 如何选择靠谱的医美机构？
- 注射玻尿酸和胶原蛋白哪个更好？
- 术后效果不满意该怎么办？

---

## 安装指南

### Claude Code（推荐）

**方法一：复制技能目录**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Claude Code skills 目录
cp -r binlee-skills/binlee-articles ~/.claude/skills/
cp -r binlee-skills/binlee-advisor ~/.claude/skills/
cp -r binlee-skills/binlee-consumer ~/.claude/skills/
```

**方法二：符号链接（保持更新）**
```bash
git clone https://github.com/sooogooo/binlee-skills.git
ln -s ~/binlee-skills/binlee-articles ~/.claude/skills/binlee-articles
ln -s ~/binlee-skills/binlee-advisor ~/.claude/skills/binlee-advisor
ln -s ~/binlee-skills/binlee-consumer ~/.claude/skills/binlee-consumer
```

---

### Cursor AI

1. 打开 Cursor → 设置（Settings）→ Extensions
2. 找到 "Skills" 或 "Claude" 相关扩展并启用
3. 将技能目录复制到 Cursor 指定的 skills 目录
```bash
# 通常位于 ~/.cursor/skills/
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```
4. 重启 Cursor，在 AI Chat 中调用技能

---

### VS Code + Copilot

1. VS Code 安装 GitHub Copilot 扩展
2. 创建 skills 目录并复制技能
```bash
mkdir -p ~/.vscode/skills
cp -r binlee-skills/binlee-* ~/.vscode/skills/
```
3. 重启 VS Code
4. 在 GitHub Copilot Chat 面板中使用 `/binlee-advisor` 等命令

---

### Windsurf

1. 打开 Windsurf → 设置（Settings）→ Skills
2. 将技能目录复制到 Windsurf skills 目录
```bash
cp -r binlee-skills/binlee-* ~/.windsurf/skills/
```
3. 重启 Windsurf
4. 在 AI Chat 中调用技能

---

### Trae AI

1. 打开 Trae → 设置 → 技能管理
2. 复制技能到 Trae 指定目录
```bash
cp -r binlee-skills/binlee-* ~/.trae/skills/
```
3. 重启 Trae，在 AI Chat 中使用技能

---

### Jan

```bash
# Jan 是一个本地运行的 AI 终端
# 将技能复制到 Jan 的 skills 目录
cp -r binlee-skills/binlee-* ~/.jan/skills/
```
然后在 Jan 的对话界面中调用。

---

### FastChat / ChatUI

```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制到 skills 目录
cp -r binlee-skills/binlee-* /path/to/your/chatui/skills/
```

---

### AnythingLLM

```bash
# 将技能复制到 AnythingLLM 的 skills 目录
cp -r binlee-skills/binlee-* ~/.anythingllm/skills/
```
然后在 Workspace 中调用。

---

### 通用 AI Terminal

大多数 AI Terminal 都遵循 `~/.claude/skills/` 或 `~/.skills/` 路径约定：

```bash
# 尝试以下路径
cp -r binlee-skills/binlee-* ~/.claude/skills/
# 或
cp -r binlee-skills/binlee-* ~/.skills/
```

---

## 使用方法

安装完成后，可通过以下方式调用技能：

```
# 行业咨询
/binlee-advisor 如何应对公立医美的竞争？

# 消费选择
/binlee-consumer 如何选择靠谱的医美机构？

# 文章检索
/binlee-articles 搜索关于民营医美趋势的文章
```

或直接对话，Claude 会自动识别并调用相关技能。

---

## 数据来源

文章原文来源：[drli.beaucare.org](https://drli.beaucare.org)

文章数量：549 篇

文章主题：医美行业洞察、临床实践、经营策略、行业趋势等

---

## 许可

MIT License

## 作者

李滨先生 - 医美行业专家