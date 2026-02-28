执行 Conductor 协议 **Phase 2.5: PLAN REVIEW**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 2.5: PLAN REVIEW」执行：
1. 加载当前 track 的 spec.md、plan.md
2. 加载 product.md、tech-stack.md、code-styles.md 作为上下文
3. 执行 Review Checklist：
   - SPEC REVIEW: 需求清晰完整、验收标准可测试、边界情况已识别、技术栈可行
   - PLAN REVIEW: 任务原子化、依赖关系清晰、包含验证阶段、无遗漏步骤
   - RISK ASSESSMENT: 潜在阻塞点、复杂任务缓冲
4. 输出 PLAN REVIEW REPORT
5. 询问用户决策：继续实施 / 修改 SPEC / 修改 PLAN / 取消

这是「三思而后行」的关键步骤，不要跳过任何检查项。
