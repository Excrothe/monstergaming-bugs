#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# This is a GitHub issue tracker with no build dependencies.
# Ensure git is configured for the session.
git config --global core.autocrlf input
git config --global init.defaultBranch main

echo "Session start: repository ready (no dependencies to install)."
