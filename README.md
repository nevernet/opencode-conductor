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
| `/conductor:review-plan` | 审核 SPEC 和 PLAN（实施前必做） |
| `/conductor:implement` | 执行当前 track 的任务 |
| `/conductor:status` | 查看进度 |
| `/conductor:revert [scope]` | 智能回滚 |
| `/conductor:review` | 代码审查 |

## 使用方法

### 1. 安装 Skill

#### 方式一：全局安装（推荐）

全局安装后，Conductor Skill 在所有 OpenCode 项目中可用。

```bash
# 1. 克隆仓库
git clone https://github.com/nevernet/opencode-conductor.git /tmp/opencode-conductor

# 2. 创建全局 skill 目录
mkdir -p ~/.config/opencode/skills/conductor

# 3. 复制 skill 文件（直接复制，保留 SKILL.md 名称）
cp /tmp/opencode-conductor/SKILL.md ~/.config/opencode/skills/conductor/

# 4. 复制模板文件（可选）
cp -r /tmp/opencode-conductor/templates ~/.config/opencode/skills/conductor/
```

#### 方式二：项目级别安装

项目级别安装只在当前项目中使用 Conductor Skill。

```bash
# 1. 在项目根目录创建 .opencode/skills/conductor/
mkdir -p .opencode/skills/conductor

# 2. 克隆仓库到临时目录
git clone https://github.com/nevernet/opencode-conductor.git /tmp/opencode-conductor

# 3. 复制 skill 文件（直接复制，保留 SKILL.md 名称）
cp /tmp/opencode-conductor/SKILL.md .opencode/skills/conductor/

# 4. 复制模板文件（可选）
cp -r /tmp/opencode-conductor/templates .opencode/skills/conductor/
```

#### 方式三：直接使用

如果你不想安装，也可以直接在对话中加载 skill 内容。

在 OpenCode 对话中输入 `/conductor:setup` 即可开始使用。

> **注意**：首次使用时会引导你设置项目上下文，请按照提示完成初始化。

### 2. 初始化项目

```
/conductor:setup
```

这会引导你创建：
- `.conductor/product.md` - 产品上下文
- `.conductor/product-guidelines.md` - 产品指南
- `.conductor/tech-stack.md` - 技术栈
- `.conductor/workflow.md` - 工作流定义
- `.conductor/code-styles.md` - 代码规范
- `.conductor/tracks.md` - Track 索引

### 3. 创建新功能 Track

```
/conductor:newTrack "Add dark mode toggle"
```

这会创建：
- `.conductor/tracks/feat-001/spec.md` - 规格说明
- `.conductor/tracks/feat-001/plan.md` - 实施计划
- `.conductor/tracks/feat-001/metadata.json` - 元数据

### 4. 审核计划 (Plan Review) ⚠️

```
/conductor:review-plan
```

**实施前必做步骤**：

- 审核 SPEC.md 确保需求清晰完整
- 审核 PLAN.md 确保任务粒度合适
- 评估技术可行性和潜在风险
- 确认无误后才能开始实施

审核通过后，track 状态变为 `plan_approved`，即可进入实施阶段。

### 5. 执行任务

```
/conductor:implement
```

Conductor 会：
1. 加载项目上下文
2. 读取当前 track 的 plan.md
3. 逐个执行任务
4. 每次任务完成后请求你验证
5. 更新进度状态

### 6. 查看进度

```
/conductor:status
```

### 7. 代码审查

```
/conductor:review
```

基于 product-guidelines.md 检查代码变更。

### 8. 智能回滚

```
/conductor:revert feat-001
```

回滚指定 track 或任务的所有变更。

## 目录结构

```
project/
├── .conductor/
│   ├── product.md              # 产品上下文
│   ├── product-guidelines.md   # 产品指南
│   ├── tech-stack.md          # 技术栈
│   ├── workflow.md            # 工作流定义
│   ├── code-styles.md         # 代码规范
│   ├── tracks.md              # Track 索引
│   └── tracks/
│       └── {track_id}/
│           ├── spec.md        # 规格说明
│           ├── plan.md        # 实施计划
│           └── metadata.json  # 元数据
└── src/                       # 项目代码
```

## 完整工作流

```
/conductor:setup                    # 1. 初始化项目
    ↓
/conductor:newTrack "新功能"         # 2. 创建 track
    ↓
/conductor:review-plan              # 3. 审核计划 ⚠️
    ↓
/conductor:implement                # 4. 实施
    ↓
/conductor:review                    # 5. 代码审查
    ↓
git commit                          # 6. 提交
```

> **核心理念**：Measure twice, cut once. Plan Review 是实施前的守门人，确保计划完善后再动手coding。

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
