执行 Conductor 协议 **Phase 7: ARCHIVE**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 7: ARCHIVE」执行：
1. 解析归档请求：指定 track_id 或 "all"
2. 若未指定，列出已完成的 tracks 供用户选择
3. 验证 track 状态为 "completed"
4. 执行归档操作：
   - 在 tracks.md 中将 track 从 "Completed Tracks" 移至 "Archived Tracks"
   - 更新 metadata.json 状态为 "archived"
   - 添加 "archived_date" 字段
5. 输出 ARCHIVE COMPLETED

归档用于保持项目整洁，将已完成的工作移至历史记录。
