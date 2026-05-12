---
name: binlee-articles
description: 李滨先生文章库 - 提供 drli.beaucare.org 网站上李滨先生所有文章的搜索、查询和阅读功能。适用于医美行业咨询、观点查询、行业分析等场景。
---

# 李滨先生医美文章库

本技能提供对 drli.beaucare.org 网站上李滨先生全部 549 篇医美行业文章的便捷访问。

## 文章数据

- **来源**: https://drli.beaucare.org
- **作者**: 李滨（医美行业专家）
- **文章数量**: 549 篇
- **主题**: 医美行业洞察、临床实践、经营策略、行业趋势等
- **存储位置**: `~/drli_articles/` 目录下，每个文章单独存储为 JSON 文件

## 核心功能

### 1. 文章搜索 (search)
根据关键词搜索文章标题和内容。

```bash
# 搜索医美服务相关文章
grep -l "医美服务" ~/drli_articles/*.json | wc -l

# 搜索行业洞察类文章
grep -l "行业" ~/drli_articles/*.json
```

### 2. 文章查询 (query)
通过文章 slug 或标题查询完整内容。

```bash
# 读取单篇文章内容
cat ~/drli_articles/yi-mei-fu-wu-de-zhen-xiang.json | python3 -c "
import json,sys
d=json.load(sys.stdin)
print('标题:', d['title'])
print('日期:', d['date'])
print('正文:', d['content'])
"
```

### 3. 索引浏览 (index)
查看全部文章列表，按分类或日期排序。

```bash
# 查看文章索引
cat ~/drli_articles_index.json | python3 -c "
import json,sys
articles=json.load(sys.stdin)
for a in articles[:10]:
    print(a['title'], '|', a['date'])
"
```

## 使用场景

1. **行业咨询**: 查找医美行业政策、市场趋势相关观点
2. **观点检索**: 搜索特定主题如"民营医美"、"国进民退"、"营销策略"等
3. **文章推荐**: 根据用户需求推荐相关主题文章
4. **内容分析**: 分析李滨先生对医美行业的核心观点和洞察

## 文章分类

- **行业洞察**: 医美行业发展趋势、政策解读、市场分析
- **临床实践**: 医疗技术、手术方法、临床案例
- **经营策略**: 机构管理、营销策略、品牌建设
- **观点评论**: 行业评论、时事热点、专业见解

## 数据更新

如需更新文章库，请运行：
```bash
# 重新抓取全部文章
node ~/fetch_drli.mjs
```

---
最后更新: 2026-05-12 | 文章总数: 549 篇