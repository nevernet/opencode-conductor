# Conductor Skill for OpenCode

**Context-Driven Development** - 类似于 Google Gemini Conductor 的 AI 开发工作流。

## 概述

Conductor Skill 实现了一个结构化的开发工作流：

```
Context → Spec & Plan → Implement
```

核心思想：将项目上下文、规格、计划作为持久化的 Markdown 文件管理，而不是依赖会话记忆。

## 功能

| 命令 | 描述 |
|------|------|
| `/conductor:setup` | 初始化项目上下文 |
| `/conductor:newTrack [描述]` | 创建新功能/bug track |
| `/conductor:implement` | 执行当前 track 的任务 |
| `/conductor:status` | 查看进度 |
| `/conductor:revert [scope]` | 智能回滚 |
| `/conductor:review` | 代码审查 |

## 使用方法

### 1. 安装 Skill

将 `conductor-skill.md` 的内容作为 system prompt 加载，或直接在对话中使用。

### 2. 初始化项目

```
/conductor:setup
```

这会引导你创建：
- `.conductor/product.md` - 产品上下文
- `.conductor/product-guidelines.md` - 产品指南
- `.conductor/tech-stack.md` - 技术栈
- `.conductor/workflow.md` - 工作流定义
- `.conductor/tracks.md` - Track 索引

### 3. 创建新功能 Track

```
/conductor:newTrack "Add dark mode toggle"
```

这会创建：
- `.conductor/tracks/feat-001/spec.md` - 规格说明
- `.conductor/tracks/feat-001/plan.md` - 实施计划
- `.conductor/tracks/feat-001/metadata.json` - 元数据

### 4. 执行任务

```
/conductor:implement
```

Conductor 会：
1. 加载项目上下文
2. 读取当前 track 的 plan.md
3. 逐个执行任务
4. 每次任务完成后请求你验证
5. 更新进度状态

### 5. 查看进度

```
/conductor:status
```

### 6. 代码审查

```
/conductor:review
```

基于 product-guidelines.md 检查代码变更。

## 目录结构

```
project/
├── .conductor/
│   ├── product.md              # 产品上下文
│   ├── product-guidelines.md   # 产品指南
│   ├── tech-stack.md          # 技术栈
│   ├── workflow.md            # 工作流定义
│   ├── tracks.md              # Track 索引
│   └── tracks/
│       └── {track_id}/
│           ├── spec.md        # 规格说明
│           ├── plan.md        # 实施计划
│           └── metadata.json  # 元数据
└── src/                       # 项目代码
```

## 与 Git Master 集成

Revert 功能会自动调用 `git-master` skill 来执行 git 操作。

## 对比 Google Conductor

| 特性 | Google Conductor | Conductor Skill |
|------|-----------------|-----------------|
| 平台 | Gemini CLI | OpenCode |
| 存储 | Markdown 文件 | Markdown 文件 |
| Git | 内置 | 调用 git-master |
| 扩展性 | CLI Extension | Skill Prompt |

## 模板文件

参见 `templates/` 目录下的模板文件。
