# Binlee Skills

基于李滨先生医美文章的 AI Skills 集合，为医美从业者和消费者提供专业咨询支持。

**公众号推荐**：李滨先生医美文章库 | 549篇行业洞察，涵盖经营管理、消费避坑、趋势分析。机构经营者、从业者、消费者必备指南。

---

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

## AI 终端安装指南

### 1. Claude Code（桌面应用）

Claude Code 是 Anthropic 官方推出的 AI 编程助手，支持 Skills 扩展。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Claude Code skills 目录
mkdir -p ~/.claude/skills
cp -r binlee-skills/binlee-articles ~/.claude/skills/
cp -r binlee-skills/binlee-advisor ~/.claude/skills/
cp -r binlee-skills/binlee-consumer ~/.claude/skills/

# 或使用符号链接保持更新
ln -s ~/binlee-skills/binlee-articles ~/.claude/skills/
ln -s ~/binlee-skills/binlee-advisor ~/.claude/skills/
ln -s ~/binlee-skills/binlee-consumer ~/.claude/skills/
```

**使用方式：**
- 重启 Claude Code
- 在对话中直接调用：`/binlee-advisor 如何应对公立医美竞争？`

---

### 2. Claude CLI（终端命令行）

Anthropic 官方 CLI 工具，支持对话和 Skills 调用。

**安装步骤：**
```bash
# 安装 Claude CLI
npm install -g @anthropic-ai/claude-code

# 或通过 Homebrew 安装
brew install anthropic/formulas/claude-code

# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 ~/.claude/skills/
mkdir -p ~/.claude/skills
cp -r binlee-skills/binlee-* ~/.claude/skills/
```

**使用方式：**
```bash
claude --skill binlee-advisor "如何应对公立医美竞争"
claude --skill binlee-consumer "如何选择靠谱的医美机构"
```

---

### 3. OpenAI Codex CLI

OpenAI 官方 CLI 工具，支持编程和 Skills 扩展。

**安装步骤：**
```bash
# 安装 Codex CLI
pip install openai-codex
# 或
npm install -g @openai/codex

# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 ~/.codex/skills/
mkdir -p ~/.codex/skills
cp -r binlee-skills/binlee-* ~/.codex/skills/
```

**使用方式：**
```bash
codex --skill binlee-advisor "医美行业趋势分析"
```

---

### 4. Cursor（AI 编程编辑器）

支持 Skills 扩展的 AI 编程工具。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Cursor skills 目录
mkdir -p ~/.cursor/skills
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```

**使用方式：**
1. 打开 Cursor → 设置 → Extensions
2. 启用 "Skills" 相关扩展
3. 在 AI Chat 中调用技能

---

### 5. VS Code + GitHub Copilot

通过 Copilot Chat 使用 Skills。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 VS Code skills 目录
mkdir -p ~/.vscode/skills
cp -r binlee-skills/binlee-* ~/.vscode/skills/
```

**使用方式：**
1. VS Code 安装 GitHub Copilot 扩展
2. 重启 VS Code
3. 在 Copilot Chat 中使用 `/binlee-advisor` 等命令

---

### 6. Windsurf

支持 AI Agents 和 Skills 的编程工具。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Windsurf skills 目录
mkdir -p ~/.windsurf/skills
cp -r binlee-skills/binlee-* ~/.windsurf/skills/
```

**使用方式：**
1. 打开 Windsurf → Settings → Skills
2. 重启 Windsurf
3. 在 AI Chat 中调用

---

### 7. Trae AI

国产 AI 编程工具，支持 Skills 扩展。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Trae skills 目录
mkdir -p ~/.trae/skills
cp -r binlee-skills/binlee-* ~/.trae/skills/
```

**使用方式：**
1. 打开 Trae → 设置 → 技能管理
2. 重启 Trae
3. 在 AI Chat 中使用技能

---

### 8. GitHub CLI + Copilot

通过 GitHub CLI 使用 Copilot 和 Skills。

**安装步骤：**
```bash
# 安装 GitHub CLI 和 Copilot 扩展
gh extension install github/copilot-cli

# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 ~/.github/skills/
mkdir -p ~/.github/skills
cp -r binlee-skills/binlee-* ~/.github/skills/
```

**使用方式：**
```bash
gh copilot skill binlee-advisor "如何应对公立医美竞争"
```

---

### 9. JetBrains + AI Assistant

JetBrains 全家桶的 AI 助手支持 Skills。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 JetBrains skills 目录
mkdir -p ~/.config/JetBrains/skills
cp -r binlee-skills/binlee-* ~/.config/JetBrains/skills/
```

**使用方式：**
1. WebStorm / IDEA 安装 AI Assistant 插件
2. 重启 IDE
3. 在 AI Assistant 中调用技能

---

### 10. Tabnine

AI 代码补全工具，支持 Skills 扩展。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Tabnine skills 目录
mkdir -p ~/.tabnine/skills
cp -r binlee-skills/binlee-* ~/.tabnine/skills/
```

---

### 11. Codeium

免费 AI 编程助手，支持 Skills。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Codeium skills 目录
mkdir -p ~/.codeium/skills
cp -r binlee-skills/binlee-* ~/.codeium/skills/
```

---

### 12. Amazon CodeWhisperer

AWS 官方 AI 编程助手。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 CodeWhisperer skills 目录
mkdir -p ~/.aws/codewhisperer/skills
cp -r binlee-skills/binlee-* ~/.aws/codewhisperer/skills/
```

---

### 13. Continue（VS Code 扩展）

开源 AI 编程助手，支持 Skills。

**安装步骤：**
```bash
# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能到 Continue skills 目录
mkdir -p ~/.continue/skills
cp -r binlee-skills/binlee-* ~/.continue/skills/
```

---

### 14. Cursor.sh（终端版）

Cursor 的命令行版本。

**安装步骤：**
```bash
# 安装 cursor.sh
curl -fsSL https://cursor.sh/install.sh | sh

# 克隆仓库
git clone https://github.com/sooogooo/binlee-skills.git

# 复制技能
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```

---

### 15. Claude for Desktop（桌面应用）

Anthropic 官方桌面应用。

**安装步骤：**
1. 下载 [Claude for Desktop](https://claude.ai/download)
2. 克隆仓库并将技能复制到应用支持目录

```bash
git clone https://github.com/sooogooo/binlee-skills.git
cp -r binlee-skills/binlee-* ~/Library/Application\ Support/Claude/Skills/
```

---

## 使用方法

安装完成后，可通过以下方式调用技能：

### 方式一：斜杠命令
```
/binlee-advisor 如何应对公立医美的竞争？
/binlee-consumer 如何选择靠谱的医美机构？
/binlee-articles 搜索关于民营医美趋势的文章
```

### 方式二：自然语言对话
直接描述你的问题，AI 会自动识别并调用相关技能。

### 方式三：CLI 调用
```bash
claude --skill binlee-advisor "医美行业趋势分析"
codex --skill binlee-consumer "玻尿酸选择指南"
```

---

## 数据来源

- **文章原文**：https://drli.beaucare.org
- **文章总数**：549 篇
- **主题分类**：行业洞察、临床实践、经营策略、观点评论

---

## 许可

MIT License

## 作者

李滨先生 - 医美行业专家

---

**立即体验**：https://github.com/sooogooo/binlee-skills