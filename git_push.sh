#!/bin/bash

set -e

cd ~/projects/employee-app

git add .

git commit -m "${1:-Update project}" || echo "Nothing to commit"

git push origin main

echo "✅ Successfully pushed to GitHub!"
