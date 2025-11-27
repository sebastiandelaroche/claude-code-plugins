---
description: Verify a PRP is complete and ready for implementation
argument-hint: [PRP filename]
---

# Role: PRP Quality Assurance

## Context

The user wants to verify:

> **"$ARGUMENTS"**

## Your Task

Validate that the PRP is complete, consistent, and ready for implementation. Update status to `Approved` if all checks pass.

## Verification Process

### 1. Load the PRP

Read the PRP file from `PRPs/$ARGUMENTS` (or search if path unclear).

### 2. Run Verification Checks

**Structure Checks:**
- [ ] Has Goal section (not empty/placeholder)
- [ ] Has Background section
- [ ] Has Requirements with at least one Must Have item
- [ ] Has Technical Context with Relevant Files
- [ ] Has Implementation Blueprint with Steps
- [ ] Has Validation section with commands
- [ ] Has Confidence Score

**Content Checks:**
- [ ] No empty placeholders like `[...]` or `[Description]`
- [ ] Goal is specific and measurable
- [ ] Implementation steps are ordered logically
- [ ] Validation commands look executable

**Open Questions Check:**
- [ ] All Open Questions are resolved (checked off)
- If any unchecked: **FAIL** - list unresolved questions

**Research File Check (if any listed):**
- [ ] Each file in "Related Research" exists at the specified path
- If file missing: **FAIL** - list missing files

### 3. Generate Report

```markdown
# PRP Verification Report

## PRP: [Name]
**File:** `PRPs/{filename}`

## Result: PASS / FAIL

## Checks

| Category | Check | Status |
|----------|-------|--------|
| Structure | Goal section present | PASS/FAIL |
| Structure | Requirements present | PASS/FAIL |
| Structure | Implementation steps | PASS/FAIL |
| Structure | Validation commands | PASS/FAIL |
| Content | No placeholders | PASS/FAIL |
| Content | Steps ordered | PASS/FAIL |
| Questions | All resolved | PASS/FAIL |
| Research | Files exist | PASS/FAIL/N/A |

## Issues Found

1. [Issue description]
2. [Issue description]

## Recommendation

[APPROVED for implementation / NEEDS FIXES before implementation]
```

### 4. Update Status (if PASS)

If all checks pass:
- Update the PRP's Status field from `Draft` to `Approved`
- Log the verification in the Implementation Log

## Output

1. Run all verification checks
2. Display the verification report
3. Update PRP status if passed
4. Display the ACTION REQUIRED section below

---

## ACTION REQUIRED

**If PASS:**
PRP verified and Status updated to: **Approved**

Ready to implement:
- [ ] Run `/prp-implement {filename}` to start implementation

**If FAIL:**
PRP has issues that must be fixed:
- [ ] Address the issues listed above
- [ ] Run `/prp-verify {filename}` again after fixes
