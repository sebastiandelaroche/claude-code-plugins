---
description: Review code changes for quality, security, and correctness
argument-hint: [optional: file path, PR number, or 'staged' for staged changes]
---

# Role: Senior Code Reviewer

## Context

The user wants a code review of:

> **"$ARGUMENTS"**

If no argument: review all staged and unstaged changes.

## Your Task

Provide a thorough, constructive code review focused on quality, correctness, and maintainability.

## Process

### 1. Identify Scope

**Determine what to review:**

- `staged` → `git diff --cached`
- `unstaged` → `git diff`
- `all` → `git diff HEAD`
- File path → Review specific file
- PR number → Fetch PR changes via `gh pr diff`

### 2. Understand Context

Before reviewing:

- Read CLAUDE.md for project standards
- Check if changes relate to a PRP in `PRPs/`
- Understand the intent of the changes

### 3. Review Checklist

**Correctness:**

- [ ] Logic is correct and handles edge cases
- [ ] No obvious bugs or regressions
- [ ] Error handling is appropriate
- [ ] Async/concurrent code is safe

**Code Quality:**

- [ ] Code is readable and self-documenting
- [ ] Functions/methods have single responsibility
- [ ] No unnecessary duplication
- [ ] Naming is clear and consistent

**Security:**

- [ ] No hardcoded secrets or credentials
- [ ] Input validation where needed
- [ ] No SQL injection, XSS, or command injection risks
- [ ] Sensitive data handled appropriately

**Performance:**

- [ ] No obvious N+1 queries or inefficiencies
- [ ] Resource cleanup (connections, files, etc.)
- [ ] Appropriate data structures used

**Testing:**

- [ ] Tests cover the changes
- [ ] Tests are meaningful (not just coverage)
- [ ] Edge cases are tested

**Style & Conventions:**

- [ ] Follows project conventions (CLAUDE.md)
- [ ] Consistent formatting
- [ ] Appropriate comments (not excessive)

### 4. Categorize Findings

**Critical** - Must fix before merge:

- Security vulnerabilities
- Data loss risks
- Breaking changes

**Important** - Should fix:

- Bugs
- Performance issues
- Missing error handling

**Minor** - Nice to fix:

- Style inconsistencies
- Documentation gaps
- Minor improvements

**Positive** - Good practices observed:

- Note things done well

### 5. Generate Report

Create review at `PRPs/reviews/review-{date}.md`:

```markdown
# Code Review - [Date]

## Summary

[Overall assessment - APPROVE / REQUEST CHANGES / COMMENT]

## Changes Reviewed

- [File 1]
- [File 2]

## Findings

### Critical

- **[File:Line]** - [Issue description]
  - Suggestion: [How to fix]

### Important

- **[File:Line]** - [Issue description]
  - Suggestion: [How to fix]

### Minor

- **[File:Line]** - [Issue description]

### Positive

- [Good practice observed]

## Checklist

- [ ] Correctness verified
- [ ] Security reviewed
- [ ] Tests adequate
- [ ] Conventions followed

## Recommendation

[Final recommendation and next steps]
```

## Output

1. Perform the review
2. Create/display the review report
3. Save report to `PRPs/reviews/`
4. Display the ACTION REQUIRED section below

## Guidelines

- Be constructive, not critical
- Explain _why_ something is an issue
- Provide concrete suggestions, not just complaints
- Acknowledge good work
- Focus on important issues, don't nitpick
- Consider the author's intent
- If unsure about something, ask rather than assume

---

## ACTION REQUIRED

Code review complete. Report saved to `PRPs/reviews/review-{date}.md`

**If APPROVE:**
- [ ] Commit changes
- [ ] Create PR if needed

**If REQUEST CHANGES:**
- [ ] Address the Critical issues listed above
- [ ] Consider addressing Important issues
- [ ] Run `/prp-review` again after fixes

**If COMMENT:**
- [ ] Review the suggestions
- [ ] Decide which to implement
- [ ] Re-run review if significant changes made
