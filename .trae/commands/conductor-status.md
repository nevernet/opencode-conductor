执行 Conductor 协议 **Phase 4: STATUS**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 4: STATUS」执行：
1. 读取 `.conductor/tracks.md`
2. 格式化输出：
   - Active Tracks（ID、Name、Phase、Progress）
   - Completed Tracks（ID、Name、Completed Date）
   - Archived Tracks（ID、Name、Archived Date）
   - 总计统计

若无 `.conductor/` 目录，提示用户运行 `/conductor:setup`。
若无 tracks 但 setup 完成，提示用户创建新 track。
