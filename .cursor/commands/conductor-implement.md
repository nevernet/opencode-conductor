执行 Conductor 协议 **Phase 3: IMPLEMENT**。

先执行 Phase 0（Context Detection），再按 `SKILL.md` 中「PHASE 3: IMPLEMENT」执行：
1. 从 tracks.md 确定当前 active track，加载其 plan.md、spec.md 及 product/tech-stack/workflow
2. 找到 plan 中第一个未完成任务，报告「当前 Phase / Task」
3. 执行该任务（读上下文、改代码、写文件等）
4. 完成后请用户验证并回复 "done"，再标记任务完成、更新 plan.md 与 metadata.json、tracks.md
5. 若本轨道全部完成，将 track 标为 completed 并提示 /conductor:review 或 /conductor:newTrack

每完成一个任务都要更新进度；未确认前不要自动标为完成。
