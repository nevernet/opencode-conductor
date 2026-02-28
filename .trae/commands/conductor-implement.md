执行 Conductor 协议 **Phase 3: IMPLEMENT**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 3: IMPLEMENT」执行：
1. 加载当前 track 的 plan.md、spec.md
2. 加载 product.md、tech-stack.md、workflow.md 作为上下文
3. 找到下一个未完成的任务
4. 执行任务：
   - 阅读相关代码和上下文
   - 按照 spec 和 code-styles 实现
   - 遵循 workflow 要求（如 TDD）
   - 遵守 tech-stack 约定
5. 任务完成后请求用户验证：
   - 代码按预期工作
   - 测试通过
   - 遵循项目规范
6. 用户确认后更新 plan.md（标记 [x]）、metadata.json、tracks.md
7. 继续下一个任务直到完成

用户回复 "done" 标记任务完成，或描述问题进行修复。
