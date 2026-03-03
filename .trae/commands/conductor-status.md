执行 Conductor 协议 **Phase 4: STATUS**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 4: STATUS」执行：
1. 读取 `.conductor/tracks.md`
2. 格式化输出：
   - Active Tracks（ID、Name、Phase、Progress）
   - Completed Tracks（ID、Name、Completed Date）
   - Archived Tracks（ID、Name、Archived Date）
   - 总计统计
   - Phase Guide（显示 Phase 1-6 的含义）

**Phase Guide:**
- Phase 1: 数据库/枚举变更
- Phase 2: API 定义 → 代码生成
- Phase 3: 后端开发（DB → Lib → apiservice）
- Phase 4: Admin 前端
- Phase 5: 小程序前端（如有）
- Phase 6: 测试验证

若无 `.conductor/` 目录，提示用户运行 `/conductor:setup`。
若无 tracks 但 setup 完成，提示用户创建新 track。
