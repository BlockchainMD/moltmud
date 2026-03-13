#!/bin/bash
# Auto git sync: stage, commit, push after debounce
# Runs via launchd every 5 minutes

cd /Users/jonathanrouwhorst/moltmud || exit 1

# Skip if no changes
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
    exit 0
fi

git add -A
git commit -m "autosync: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin master 2>/dev/null
