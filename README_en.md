# Binlee Skills

AI Skills based on Mr. Li Bin's medical aesthetics articles, providing professional consulting for industry practitioners and consumers.

**For WeChat Public Account**: Mr. Li Bin's Article Library | 549 articles covering business management, consumer guidance, and industry trends. Essential for practitioners and consumers.

---

## Skills List

### binlee-articles
**Mr. Li Bin's Article Library** - Search and reading access to 549 medical aesthetics articles.
- Article search and query
- Browse by topic category
- Content analysis support

### binlee-advisor
**Medical Aesthetics Industry Consultant** - Professional consulting for medical aesthetics operators and practitioners.
- Business management consulting
- Industry trend analysis
- Competitive strategy advice

Use cases:
- How to position a medical aesthetics clinic?
- How to compete with public hospitals?
- What are the industry trends for the next 3 years?
- How to build a brand for small-to-medium institutions?

### binlee-consumer
**Medical Aesthetics Consumer Guide** - Professional decision support for medical aesthetics consumers.
- Institution selection guidance
- Doctor selection advice
- Risk assessment and consumption decisions

Use cases:
- How to choose a reliable medical aesthetics institution?
- Which is better, hyaluronic acid or collagen injection?
- What to do if the result is unsatisfactory?

---

## AI Terminal Installation Guide

### 1. Claude Code (Desktop App)

Anthropic's official AI coding assistant with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Claude Code skills directory
mkdir -p ~/.claude/skills
cp -r binlee-skills/binlee-articles ~/.claude/skills/
cp -r binlee-skills/binlee-advisor ~/.claude/skills/
cp -r binlee-skills/binlee-consumer ~/.claude/skills/

# Or use symbolic links to stay updated
ln -s ~/binlee-skills/binlee-* ~/.claude/skills/
```

**Usage:**
- Restart Claude Code
- Call directly: `/binlee-advisor How to compete with public hospitals?`

---

### 2. Claude CLI (Terminal)

Anthropic's official CLI tool for command-line usage.

**Installation:**
```bash
# Install Claude CLI
npm install -g @anthropic-ai/claude-code

# Or via Homebrew
brew install anthropic/formulas/claude-code

# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to ~/.claude/skills/
mkdir -p ~/.claude/skills
cp -r binlee-skills/binlee-* ~/.claude/skills/
```

**Usage:**
```bash
claude --skill binlee-advisor "Medical aesthetics industry trends"
claude --skill binlee-consumer "How to choose a reliable institution"
```

---

### 3. OpenAI Codex CLI

OpenAI's official CLI tool for coding and Skills.

**Installation:**
```bash
# Install Codex CLI
pip install openai-codex
# or
npm install -g @openai/codex

# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to ~/.codex/skills/
mkdir -p ~/.codex/skills
cp -r binlee-skills/binlee-* ~/.codex/skills/
```

**Usage:**
```bash
codex --skill binlee-advisor "Medical aesthetics industry analysis"
```

---

### 4. Cursor

AI-powered code editor with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Cursor skills directory
mkdir -p ~/.cursor/skills
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```

**Usage:**
1. Open Cursor → Settings → Extensions
2. Enable "Skills" extension
3. Call skills in AI Chat

---

### 5. VS Code + GitHub Copilot

Use Skills via Copilot Chat in VS Code.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to VS Code skills directory
mkdir -p ~/.vscode/skills
cp -r binlee-skills/binlee-* ~/.vscode/skills/
```

**Usage:**
1. Install GitHub Copilot extension in VS Code
2. Restart VS Code
3. Use `/binlee-advisor` commands in Copilot Chat

---

### 6. Windsurf

AI coding tool with Agents and Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Windsurf skills directory
mkdir -p ~/.windsurf/skills
cp -r binlee-skills/binlee-* ~/.windsurf/skills/
```

**Usage:**
1. Open Windsurf → Settings → Skills
2. Restart Windsurf
3. Call skills in AI Chat

---

### 7. Trae AI

Chinese AI coding tool with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Trae skills directory
mkdir -p ~/.trae/skills
cp -r binlee-skills/binlee-* ~/.trae/skills/
```

**Usage:**
1. Open Trae → Settings → Skills Management
2. Restart Trae
3. Use skills in AI Chat

---

### 8. GitHub CLI + Copilot

Use Copilot and Skills via GitHub CLI.

**Installation:**
```bash
# Install GitHub CLI and Copilot extension
gh extension install github/copilot-cli

# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to ~/.github/skills/
mkdir -p ~/.github/skills
cp -r binlee-skills/binlee-* ~/.github/skills/
```

**Usage:**
```bash
gh copilot skill binlee-advisor "How to compete with public hospitals"
```

---

### 9. JetBrains + AI Assistant

AI Assistant in JetBrains IDEs supports Skills.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to JetBrains skills directory
mkdir -p ~/.config/JetBrains/skills
cp -r binlee-skills/binlee-* ~/.config/JetBrains/skills/
```

**Usage:**
1. Install AI Assistant plugin in WebStorm/IDEA
2. Restart IDE
3. Call skills in AI Assistant

---

### 10. Tabnine

AI code completion tool with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Tabnine skills directory
mkdir -p ~/.tabnine/skills
cp -r binlee-skills/binlee-* ~/.tabnine/skills/
```

---

### 11. Codeium

Free AI coding assistant with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Codeium skills directory
mkdir -p ~/.codeium/skills
cp -r binlee-skills/binlee-* ~/.codeium/skills/
```

---

### 12. Amazon CodeWhisperer

AWS's official AI coding assistant.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to CodeWhisperer skills directory
mkdir -p ~/.aws/codewhisperer/skills
cp -r binlee-skills/binlee-* ~/.aws/codewhisperer/skills/
```

---

### 13. Continue (VS Code Extension)

Open-source AI coding assistant with Skills support.

**Installation:**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Continue skills directory
mkdir -p ~/.continue/skills
cp -r binlee-skills/binlee-* ~/.continue/skills/
```

---

### 14. Cursor.sh (Terminal Version)

Cursor's command-line version.

**Installation:**
```bash
# Install cursor.sh
curl -fsSL https://cursor.sh/install.sh | sh

# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```

---

### 15. Claude for Desktop

Anthropic's official desktop application.

**Installation:**
1. Download [Claude for Desktop](https://claude.ai/download)
2. Clone repository and copy skills to app support directory

```bash
git clone https://github.com/sooogooo/binlee-skills.git
cp -r binlee-skills/binlee-* ~/Library/Application\ Support/Claude/Skills/
```

---

## Usage

### Method 1: Slash Commands
```
/binlee-advisor How to compete with public medical aesthetics hospitals?
/binlee-consumer How to choose a reliable medical aesthetics institution?
/binlee-articles Search articles about private medical aesthetics trends
```

### Method 2: Natural Language
Describe your problem directly, AI will recognize and invoke the appropriate skill.

### Method 3: CLI Usage
```bash
claude --skill binlee-advisor "Medical aesthetics industry analysis"
codex --skill binlee-consumer "Hyaluronic acid selection guide"
```

---

## Data Source

- **Original articles**: https://drli.beaucare.org
- **Total articles**: 549
- **Categories**: Industry Insights, Clinical Practice, Business Strategy, Opinions & Comments

---

## License

MIT License

## Author

Mr. Li Bin - Medical Aesthetics Industry Expert

---

**Get Started**: https://github.com/sooogooo/binlee-skills