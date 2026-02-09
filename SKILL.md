---
name: claw-init
description: Initialize and audit the OpenClaw system health. Use when (1) Checking data health, (2) Performing weekly system audits, (3) Flattening directory structures, or (4) Verifying Agent model configurations.
---

# Claw Init Skill

This skill automates the health auditing and initialization of the OpenClaw System.

## Core Workflows

### 1. System Health Audit
- **Static File Check**: Monitor the size of `AGENTS.md`, `USER.md`, `MEMORY.md`, and `SOUL.md`. Warn if total size exceeds 20KB.
- **Context Overhead**: Calculate the baseline Token cost per turn based on these files.
- **Structure Check**: Scan the `vault/` directory. If any `vault/` folder contains another `vault/` folder (nesting), trigger a flattening migration.

### 2. Agent Brain Audit
- Verify that agents are using the default system models.
- Check for system connectivity health.

### 3. Task Center Sync
- Ensure `TASK-CENTER.md` is present in the root.
- Cross-reference current tasks with the `memory/` logs to detect stalls.

### 4. Knowledge Work Plugin Audit
- **Distribution Check**: Cross-reference the presence of `knowledge-work/` subdirectories in each Agent's vault against the master map in `references/knowledge-work-map.md`.
- **Content Integrity**: Verify that specific domain instructions are correctly placed.

### 5. Agentic Superpowers Audit
- **Methodology Check**: Verify the presence of core skills (`brainstorming`, `writing-plans`, `TDD`, `systematic-debugging`) in the local skills repository.
- **Skill Installation**: Run `scripts/install-browser-skills.sh` to ensure `agent-browser` skills are up to date from GitHub.

## Usage

### Weekly Audit
Run this to generate a full health report for the Master.
1. Run `scripts/install-browser-skills.sh` to update skills.
2. Scan all files in `vault/00-System`.
3. check directory depths.
4. List active Cron jobs.
5. Output a Markdown table with results.

### Initialize System
Use this for first-time setup:
1. Copy templates from `templates/` to root (`SOUL.md`, `USER.md`).
2. Run `scripts/install-browser-skills.sh`.

### flattening Migration
If nesting is detected:
1. `mv` contents of nested `vault/` to top-level.
2. `rm -rf` the empty nested directories.
3. Update `SOUL.md` paths if necessary.
