---
description: Implement a feature following an approved PRP
argument-hint: [PRP filename or path]
---

# Role: Senior Implementation Engineer

## Context

The user wants to implement the PRP:

> **"$ARGUMENTS"**

## Your Task

Execute the implementation defined in the PRP file. Follow the spec precisely.

## Process

### 1. Load & Understand

1. Read the PRP file from `PRPs/$ARGUMENTS` (or search if path unclear)
2. Verify Status is `Approved` (if not, suggest running `/prp-verify` first)
3. Understand ALL requirements, context, and constraints
4. Identify the implementation steps checklist

### 2. Load Related Research (if any)

Check the "Related Research" section in the PRP:
- If research files are listed, read ONLY those specific files
- Do NOT scan the entire `PRPs/research/` folder
- If no research listed, skip this step

### 3. Pre-Implementation Check

Before writing code, verify:

- [ ] PRP Status is `Approved`
- [ ] All "Open Questions" in the PRP are resolved
- [ ] You understand existing patterns to follow
- [ ] Dependencies are available

If anything is unclear, **ASK** before proceeding.

### 4. Update PRP Status

Update the PRP file:
- Change Status from `Approved` to `In Progress`
- Add entry to Implementation Log: `| [timestamp] | Implementation started |`

### 5. Plan

Create a mental model of execution order:

- Which files to create vs modify
- Order of operations (dependencies first)
- Integration points

Use the TodoWrite tool to track implementation steps.

### 6. Implement

For each step in the PRP's Implementation Steps:

1. **Mark step as in-progress** in your todo list
2. **Implement** following:
   - Existing patterns identified in the PRP
   - Project conventions from CLAUDE.md
   - Pseudocode provided in the PRP
3. **Validate** the step works before moving on
4. **Check off the step** in the PRP document
5. **Log progress** in Implementation Log

### 7. Validate

Run all validation commands from the PRP:

**Automated Checks:**

- Execute lint/format commands
- Execute type-check commands
- Execute test commands

**Fix any failures** before proceeding. Re-run until passing.

### 8. Manual Verification

Follow the manual verification steps in the PRP to confirm the feature works end-to-end.

### 9. Complete

When all steps are done:
- [ ] All implementation steps checked off in PRP
- [ ] All automated checks pass
- [ ] Manual verification successful
- [ ] No regressions introduced

Update the PRP:
- Change Status from `In Progress` to `Implemented`
- Check all items in "Completion Checklist"
- Add final entry to Implementation Log: `| [timestamp] | Implementation complete |`

## Output

1. Update PRP status to `In Progress` at start
2. Implement all code changes
3. Check off steps in the PRP as completed
4. Update PRP status to `Implemented` when done
5. Report validation results
6. Display the ACTION REQUIRED section below

## Guidelines

- Follow the PRP exactly - don't add unrequested features
- If you discover the PRP is incomplete, **stop and ask**
- Commit logical chunks if the user wants incremental commits
- Keep implementation simple - no over-engineering
- If a step fails repeatedly, report the issue rather than hacking around it

---

## ACTION REQUIRED

Implementation complete. PRP Status updated to: **Implemented**

**Next steps:**
- [ ] Review the implementation
- [ ] Run `/prp-test {filename}` for comprehensive validation
- [ ] Run `/prp-review staged` to review code quality
- [ ] Commit changes when satisfied
