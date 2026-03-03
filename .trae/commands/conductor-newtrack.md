执行 Conductor 协议 **Phase 2: NEW TRACK**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 2: NEW TRACK」执行：
1. 从用户输入中解析需求/功能描述（若未提供则询问）
2. 生成 track_id（如 feat-001）
3. 创建 `.conductor/tracks/{track_id}/spec.md`、`plan.md`、`metadata.json`
   - spec.md 包含：Overview、Why、Requirements、Acceptance Criteria、API Changes、Database Changes
   - plan.md 按 Phase 1-6 划分任务
4. 更新 `.conductor/tracks.md`
5. 输出 NEW TRACK CREATED 及下一步

**铁律：必须先给出完整计划，不要直接执行任何代码！**
Plan 必须包含：步骤、需要哪些文件、潜在风险、检查点

用户在本命令后可能附带需求描述，例如「添加暗色模式」。若没有，先询问要做的功能或修复。
