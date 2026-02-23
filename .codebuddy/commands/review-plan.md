---
name: conductor:review-plan
description: Review spec and plan before implementation (measure twice, code once)
arguments:
  - name: track_id
    description: Optional track ID to review (defaults to active track)
    required: false
---

Review the SPEC.md and PLAN.md before implementation to catch issues early.

**Usage:**
```
/conductor:review-plan
/conductor:review-plan feat-001
```

**Review checklist:**
- Requirements are clear and complete
- Acceptance criteria are testable
- Edge cases are identified
- Feasible with current tech stack
- Tasks are atomic and small enough
- Dependencies between tasks are clear
- No missing implementation steps

**Output:**
- SPEC assessment with notes
- PLAN assessment with notes
- Risk assessment
- Recommendations for fixes
- Overall approval status

**After review:**
- If approved: Proceed to `/conductor:implement`
- If needs fixes: Revise spec/plan first
