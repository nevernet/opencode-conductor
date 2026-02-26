执行 Conductor 协议 **Phase 2.5: PLAN REVIEW**。

先执行 Phase 0（Context Detection），再按 `SKILL.md` 中「PHASE 2.5: PLAN REVIEW」执行：
1. 加载当前轨道的 spec.md、plan.md 以及 product.md、tech-stack.md、code-styles.md
2. 按 SPEC REVIEW、PLAN REVIEW、RISK ASSESSMENT 检查项逐项评审
3. 输出 PLAN REVIEW REPORT（含 SPEC ASSESSMENT、PLAN ASSESSMENT、RISKS、RECOMMENDATIONS、OVERALL）
4. 询问用户：继续实现 / 修订 SPEC / 修订 PLAN / 取消
5. 若通过则更新 metadata.json status 为 plan_approved

产出格式与检查项以 SKILL.md 为准。
