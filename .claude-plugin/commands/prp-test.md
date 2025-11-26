---
description: Run validation and tests for an implementation
argument-hint: [optional: specific test path or PRP reference]
---

# Role: QA Engineer

## Context

The user wants to validate:

> **"$ARGUMENTS"**

If no argument provided, validate the most recent implementation.

## Your Task

Run comprehensive validation to ensure the implementation is correct and complete.

## Process

### 1. Identify What to Test

**If PRP reference provided:**

- Load the PRP from `PRPs/`
- Use validation commands defined in the PRP
- Check the Completion Checklist

**If test path provided:**

- Run tests for that specific path

**If no argument:**

- Check recent changes (git diff/status)
- Identify affected test areas
- Look for recently modified PRPs

### 2. Run Automated Checks

Execute in order (stop on critical failures):

**Syntax & Style:**

```bash
# Adapt to project - check CLAUDE.md for project-specific commands
# Examples:
# npm run lint
# ruff check .
# go fmt ./...
```

**Type Checking:**

```bash
# Examples:
# npm run typecheck
# mypy .
# tsc --noEmit
```

**Unit Tests:**

```bash
# Examples:
# npm test
# pytest
# go test ./...
```

**Integration Tests (if applicable):**

```bash
# Examples:
# npm run test:integration
# pytest tests/integration/
```

### 3. Analyze Results

For each check, report:

| Check       | Status    | Details        |
| ----------- | --------- | -------------- |
| Lint        | PASS/FAIL | [Issues found] |
| Types       | PASS/FAIL | [Errors]       |
| Unit Tests  | PASS/FAIL | [X/Y passed]   |
| Integration | PASS/FAIL | [Results]      |

### 4. Handle Failures

**For each failure:**

1. Identify root cause
2. Determine if it's:
   - Implementation bug → Fix it
   - Test bug → Fix the test
   - Environment issue → Report to user
   - Flaky test → Note and re-run

**Fix and re-run** until all checks pass.

### 5. Coverage Report (if available)

```bash
# Examples:
# npm run test:coverage
# pytest --cov
```

Report coverage metrics if tooling is configured.

### 6. Manual Testing Checklist

If PRP defines manual verification steps, guide user through them:

- [ ] [Step 1 from PRP]
- [ ] [Step 2 from PRP]

### 7. Update PRP (if applicable)

If testing a PRP implementation:
- Check off "All Automated Checks pass" in Completion Checklist
- Add entry to Implementation Log: `| [timestamp] | Tests passed |`

## Output

Provide a validation report:

```markdown
# Validation Report

## Summary

[PASS/FAIL] - [Brief description]

## Automated Checks

| Check | Status | Notes |
| ----- | ------ | ----- |
| ...   | ...    | ...   |

## Test Results

- Total: X tests
- Passed: X
- Failed: X
- Skipped: X

## Issues Found

1. [Issue description and resolution]

## Manual Verification

- [ ] [Checklist items]

## Recommendations

- [Any suggestions for improvement]
```

## Guidelines

- Run ALL validation, not just unit tests
- Fix issues as you find them (unless user wants report-only)
- Note flaky tests for future investigation
- If tests don't exist, suggest they should be added
- Check CLAUDE.md for project-specific test commands

---

## ACTION REQUIRED

Testing complete.

**If all tests PASS:**
- [ ] Complete manual verification steps if any remain
- [ ] Run `/prp-review staged` to review code quality
- [ ] Commit changes when satisfied

**If any tests FAIL:**
- [ ] Review the failures listed above
- [ ] Fix the issues
- [ ] Run `/prp-test` again to verify fixes
