#!/bin/bash
# ============================================================
# apply.sh — Apply all professional READMEs to their repos
# ============================================================
# Run this script from your local machine (where you have
# full GitHub push access) after cloning this portfolio repo.
#
# Usage:
#   cd readme-updates
#   bash apply.sh
#
# What it does:
#   For each of the 10 repos below:
#   1. Clones the repo from GitHub
#   2. Creates branch: claude/update-readme-CBATz
#   3. Copies the new professional README
#   4. Commits and pushes the branch
#   5. You can then open a PR on GitHub and merge it
# ============================================================

set -e

GITHUB_USER="sadykovIsmail"
BRANCH="claude/update-readme-CBATz"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORK_DIR="/tmp/readme-deploy-$$"

mkdir -p "$WORK_DIR"
echo ""
echo "=== README Deploy Script ==="
echo "GitHub user: $GITHUB_USER"
echo "Branch: $BRANCH"
echo "Work dir: $WORK_DIR"
echo ""

apply_readme() {
  local REPO=$1
  echo "------------------------------------------------------------"
  echo "▶  Processing: $REPO"
  echo "------------------------------------------------------------"

  local CLONE_DIR="$WORK_DIR/$REPO"
  local README_SRC="$SCRIPT_DIR/$REPO/README.md"

  # Check source README exists
  if [ ! -f "$README_SRC" ]; then
    echo "  ✗ No README found at $README_SRC — skipping"
    return
  fi

  # Clone the repo
  echo "  Cloning https://github.com/$GITHUB_USER/$REPO ..."
  git clone "https://github.com/$GITHUB_USER/$REPO.git" "$CLONE_DIR" --quiet

  cd "$CLONE_DIR"

  # Create and switch to the new branch
  git checkout -b "$BRANCH" 2>/dev/null || git checkout "$BRANCH"

  # Copy the new README
  cp "$README_SRC" README.md

  # Copy screenshots if they exist
  if [ -d "$SCRIPT_DIR/$REPO/screenshots" ] && [ "$(ls -A "$SCRIPT_DIR/$REPO/screenshots")" ]; then
    mkdir -p screenshots
    cp "$SCRIPT_DIR/$REPO/screenshots/"* screenshots/ 2>/dev/null || true
    git add screenshots/ 2>/dev/null || true
  fi

  # Commit and push
  git add README.md
  git commit -m "docs: rewrite README with professional documentation

- Added shields.io badges (language, framework, license)
- Complete project description and feature list
- Tech stack table
- Getting started and installation instructions
- API endpoint documentation (where applicable)
- Code examples and usage snippets

https://github.com/sadykovIsmail/portfolio"

  echo "  Pushing branch $BRANCH ..."
  git push -u origin "$BRANCH" --quiet

  echo "  ✓ Done! Create PR at: https://github.com/$GITHUB_USER/$REPO/compare/$BRANCH"
  cd "$SCRIPT_DIR"
}

# ============================================================
# Repos to update (in priority order)
# ============================================================
apply_readme "recipe_app_api"
apply_readme "django_advanced_rest_api_course"
apply_readme "syntecxhub-user-crud-api"
apply_readme "node.js"
apply_readme "frontend-projects-collection"
apply_readme "Java-script"
apply_readme "fcc-javascript-algorithms"
apply_readme "leetcode-problems"
apply_readme "python-course"
apply_readme "sadykovIsmail"

# ============================================================
echo ""
echo "============================================================"
echo "✅  All READMEs deployed to branch: $BRANCH"
echo ""
echo "Next steps — open these PRs on GitHub and merge them:"
echo ""
echo "  https://github.com/$GITHUB_USER/recipe_app_api/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/django_advanced_rest_api_course/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/syntecxhub-user-crud-api/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/node.js/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/frontend-projects-collection/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/Java-script/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/fcc-javascript-algorithms/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/leetcode-problems/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/python-course/compare/$BRANCH"
echo "  https://github.com/$GITHUB_USER/sadykovIsmail/compare/$BRANCH"
echo "============================================================"

# Cleanup
rm -rf "$WORK_DIR"
