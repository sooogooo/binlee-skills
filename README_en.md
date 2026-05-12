# Binlee Skills

AI Terminal Skills based on Mr. Li Bin's medical aesthetics articles, providing professional consulting for industry practitioners and consumers.

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
- How to build a brand for small-to-medium medical aesthetics institutions?

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

## Installation Guide

### Claude Code (Recommended)

**Method 1: Copy Skills Directory**
```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy skills to Claude Code skills directory
cp -r binlee-skills/binlee-articles ~/.claude/skills/
cp -r binlee-skills/binlee-advisor ~/.claude/skills/
cp -r binlee-skills/binlee-consumer ~/.claude/skills/
```

**Method 2: Symbolic Link (Stay Updated)**
```bash
git clone https://github.com/sooogooo/binlee-skills.git
ln -s ~/binlee-skills/binlee-articles ~/.claude/skills/binlee-articles
ln -s ~/binlee-skills/binlee-advisor ~/.claude/skills/binlee-advisor
ln -s ~/binlee-skills/binlee-consumer ~/.claude/skills/binlee-consumer
```

---

### Cursor AI

1. Open Cursor → Settings → Extensions
2. Find and enable "Skills" or "Claude" related extension
3. Copy skills to Cursor's skills directory
```bash
# Usually at ~/.cursor/skills/
cp -r binlee-skills/binlee-* ~/.cursor/skills/
```
4. Restart Cursor and call skills in AI Chat

---

### VS Code + Copilot

1. Install GitHub Copilot extension in VS Code
2. Create skills directory and copy skills
```bash
mkdir -p ~/.vscode/skills
cp -r binlee-skills/binlee-* ~/.vscode/skills/
```
3. Restart VS Code
4. Use `/binlee-advisor` or similar commands in GitHub Copilot Chat

---

### Windsurf

1. Open Windsurf → Settings → Skills
2. Copy skills to Windsurf skills directory
```bash
cp -r binlee-skills/binlee-* ~/.windsurf/skills/
```
3. Restart Windsurf
4. Call skills in AI Chat

---

### Trae AI

1. Open Trae → Settings → Skills Management
2. Copy skills to Trae skills directory
```bash
cp -r binlee-skills/binlee-* ~/.trae/skills/
```
3. Restart Trae
4. Use skills in AI Chat

---

### Jan (Local AI)

```bash
# Jan is a locally-run AI terminal
# Copy skills to Jan's skills directory
cp -r binlee-skills/binlee-* ~/.jan/skills/
```
Then call in Jan's conversation interface.

---

### FastChat / ChatUI

```bash
# Clone repository
git clone https://github.com/sooogooo/binlee-skills.git

# Copy to skills directory
cp -r binlee-skills/binlee-* /path/to/your/chatui/skills/
```

---

### AnythingLLM

```bash
# Copy skills to AnythingLLM skills directory
cp -r binlee-skills/binlee-* ~/.anythingllm/skills/
```
Then call in Workspace.

---

### Generic AI Terminal

Most AI Terminals follow `~/.claude/skills/` or `~/.skills/` path convention:

```bash
# Try these paths
cp -r binlee-skills/binlee-* ~/.claude/skills/
# or
cp -r binlee-skills/binlee-* ~/.skills/
```

---

## Usage

After installation, call skills using:

```
# Industry consulting
/binlee-advisor How to compete with public medical aesthetics hospitals?

# Consumer guidance
/binlee-consumer How to choose a reliable medical aesthetics institution?

# Article search
/binlee-articles Search articles about private medical aesthetics trends
```

Or simply chat naturally, Claude will recognize and invoke the appropriate skill.

---

## Data Source

Original articles: [drli.beaucare.org](https://drli.beaucare.org)

Total articles: 549

Topics: Medical aesthetics industry insights, clinical practice, business strategy, industry trends, etc.

---

## License

MIT License

## Author

Mr. Li Bin - Medical Aesthetics Industry Expert