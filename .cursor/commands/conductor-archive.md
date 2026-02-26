执行 Conductor 协议 **Phase 7: ARCHIVE**。

按 `SKILL.md` 中「PHASE 7: ARCHIVE」执行：
1. 解析用户输入：指定 track_id 或 "all" 归档所有已完成 tracks
2. 验证 track 状态是否为 "completed"
3. 将 track 从 "Completed Tracks" 移动到 "Archived Tracks"
4. 更新 metadata.json：status 改为 "archived"，添加 archived_date
5. 输出 ARCHIVE COMPLETED 报告：显示已归档 tracks、文件更新列表、统计信息

若未指定 track，列出所有 completed tracks 供用户选择。
若 track 未完成，警告并询问是否确认。

格式以 SKILL.md 为准。
