#!/bin/bash

set -e

BRANCH="main"

echo "📂 Checking Git status..."
git status

echo ""
echo "📥 Fetching latest changes..."
git fetch origin

echo ""
echo "📦 Staging changes..."
git add .

echo ""
echo "📝 Committing changes..."
git commit -m "${1:-Update project}" || echo "Nothing to commit."

echo ""
echo "🔄 Rebasing with remote..."
git pull --rebase origin $BRANCH

echo ""
echo "🚀 Pushing to GitHub..."
git push origin $BRANCH

echo ""
echo "✅ Successfully pushed to GitHub!"
