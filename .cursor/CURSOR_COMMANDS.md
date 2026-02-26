# Cursor 中的 Conductor 命令

## rules 和 commands 的区别

- **`.cursor/rules/`**：给 AI 的**规则/上下文**，不会在输入 `/` 时出现为可选项。用来约束 AI 行为、项目约定等。
- **`.cursor/commands/`**：**斜杠命令**的存放位置。在这里的 `.md` 文件会变成可选的命令，在聊天里输入 `/` 会列出并可执行。

Conductor 的「可输入命令」放在 **`.cursor/commands/`**，因此会出现在 Cursor 的 `/` 命令列表中。

## 命令列表（来自 .cursor/commands/）

在聊天框输入 `/`，选择下面任一命令即可触发对应 Conductor 阶段：

| 输入命令 | 说明 |
|----------|------|
| `/conductor-setup` | 初始化 .conductor/ 与 product、tech-stack、workflow 等配置 |
| `/conductor-newtrack` | 新建一条需求轨道（可在命令后或下一句写描述，如「添加暗色模式」） |
| `/conductor-review-plan` | 评审当前轨道的 SPEC 与 PLAN |
| `/conductor-implement` | 按 plan 逐任务实现 |
| `/conductor-status` | 查看所有轨道状态与进度 |
| `/conductor-revert` | 按 track/phase/task 回滚并更新状态 |
| `/conductor-review` | 对当前轨道做代码评审报告 |

## 使用顺序建议

1. 首次：`/conductor-setup`
2. 新需求：`/conductor-newtrack`（必要时在下一句补充「添加暗色模式」等）
3. 可选：`/conductor-review-plan`
4. 实现：`/conductor-implement`
5. 查进度：`/conductor-status`
6. 完成后：`/conductor-review`

各阶段具体步骤与产出格式见项目根目录 **SKILL.md**。
