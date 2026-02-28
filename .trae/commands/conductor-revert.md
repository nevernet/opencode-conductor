执行 Conductor 协议 **Phase 5: REVERT**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 5: REVERT」执行：
1. 解析回滚范围：track / phase / task 级别
2. 若未指定范围，询问用户
3. 分析 git 历史，找到相关的提交
4. 执行 git revert 相关变更
5. 更新状态：
   - plan.md 中被回滚的任务标记为 [ ]
   - metadata.json 的 completed_tasks 递减
   - tracks.md 状态更新
6. 输出 REVERT COMPLETED

**警告**：此操作使用 git revert/reset，请确认范围后再执行。
