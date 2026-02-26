执行 Conductor 协议 **Phase 5: REVERT**。

先执行 Phase 0（Context Detection），再按 `SKILL.md` 中「PHASE 5: REVERT」执行：
1. 解析用户要回滚的范围：track / phase / task；未指定则询问
2. 确定回滚范围（整条 track、某 phase 内任务、或单个 task）
3. 使用 git 能力分析并回滚相关提交，并更新 plan.md（将对应任务标回未完成）、metadata.json、tracks.md
4. 输出 REVERT COMPLETED 及本次操作说明

若项目依赖 git-master 等 skill，按 SKILL.md 中 5.3 调用；否则用现有 git 工具完成回滚与状态更新。
