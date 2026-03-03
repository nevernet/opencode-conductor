执行 Conductor 协议 **Phase 3: IMPLEMENT**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 3: IMPLEMENT」执行：

**Phase 执行顺序（必须严格遵守）：**
```
Phase 1: 数据库/枚举变更
    ↓
Phase 2: API 定义 → 代码生成
    ↓
Phase 3: 后端开发（DB → Lib → apiservice）
    ↓
Phase 4: Admin 前端
    ↓
Phase 5: 小程序前端（如有）
    ↓
Phase 6: 测试验证
```

1. 加载当前 track 的 plan.md、spec.md
2. 加载 product.md、tech-stack.md、workflow.md 作为上下文
3. 找到下一个未完成的任务
4. 执行任务：
   - 阅读相关代码和上下文（包括 MAINFEST.md、references/*.md）
   - 按照 spec 和 code-styles 实现
   - 遵循 workflow 要求（如 TDD）
   - 遵守 tech-stack 约定
5. 任务完成后请求用户验证：
   - 代码按预期工作
   - 测试通过
   - 遵循项目规范
6. **Phase 边界检查点**：当一个 Phase 的所有任务完成后，必须明确请求用户确认后再进入下一个 Phase
7. 用户确认后更新 plan.md（标记 [x]）、metadata.json、tracks.md
8. 继续下一个任务直到完成

用户回复 "done" 标记任务完成，回复 "continue" 进入下一个 Phase，或描述问题进行修复。

**铁律：禁止跳过 Phase 或不经过用户确认就进入下一个 Phase！**
