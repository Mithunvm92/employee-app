# Go to your project
cd ~/projects/employee-app

# Initialize Git (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - Employee Management 3-tier Docker application"

# Rename branch to main
git branch -M main

# Add remote
git remote add origin https://github.com/Mithunvm92/employee-app.git

# Push
git push -u origin main
