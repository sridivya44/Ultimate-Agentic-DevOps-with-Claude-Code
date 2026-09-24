# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.

## Structure

- `index.html` — single-page site; sections are anchored by id (`home`, `about`, `services`, `courses`, `book`, `community`, `contact`) and linked from the nav. Pure HTML5 and CSS3. No JavaScript. No build step. No framework.Font Awesome is loaded from cdnjs for icons.
- `style.css` — all styling for `index.html`. Responsive rules are written per-component (media queries at 900px / 768px / 600px are scattered next to the component they affect, not collected at the end), so edit the breakpoint block nearest the component you're changing.
- `privacy.html` / `terms.html` — standalone pages with their own inline `<style>` block; they do not use `style.css`, so global style changes must be duplicated there if they should apply.
- `images/` — static assets referenced by relative paths.

## Deployment Proof Rule (from README)

Students must keep the original footer credit in `index.html` (`<p>Crafted with <span>cloud</span> excellence by Pravin Mishra</p>`) and add a visible "Deployed by" line with their cohort/name/group/week/date, e.g.:

```html
<p><strong>Deployed by:</strong> DMI Cohort 2 | Rahul Sharma | Group 4 | Week 1 | 16-01-2026</p>
```

Don't remove or alter the original credit line.

## Deployment Notes

When deploying to S3 (or any web root), sync only site files — exclude `.git/`, `.github/`, `.claude/`, `.sf/`, `terraform/`, `*.md`, and `.mcp.json` so repo tooling and docs aren't published.
