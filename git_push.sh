#!/bin/bash

cd ~/projects/employee-app || exit

git add .

git commit -m "${1:-Update project}" || true

git push origin main
