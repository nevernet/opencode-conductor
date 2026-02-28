执行 Conductor 协议 **Phase 6: REVIEW**。

先执行 Phase 0（Context Detection），再严格按 `SKILL.md` 中「PHASE 6: REVIEW」执行：
1. 加载 product-guidelines.md、spec.md、plan.md
2. 获取 git diff 查看所有变更
3. 执行 Review Checklist：
   - Product Guidelines Compliance: 品牌调性、无障碍标准、UI/UX 规范
   - Spec Compliance: 所有需求已实现、验收标准已满足、边界情况已处理
   - Code Quality: 遵循技术栈约定、包含测试、无代码异味
4. 输出 CODE REVIEW REPORT
5. 给出建议操作列表

完成后若通过，可提交/合并；若有问题，按建议修复后重新 review。
