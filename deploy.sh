#!/bin/bash

# Quick deploy script - commits and pushes changes, triggering auto-deployment

echo "🚀 Deploying to GitHub (Vercel will auto-deploy)..."
echo ""

# Check for changes
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ No changes to commit"
    exit 0
fi

# Show what will be committed
echo "Changes to be committed:"
git status -s
echo ""

# Ask for commit message
read -p "Enter commit message (or press Enter for default): " COMMIT_MSG
COMMIT_MSG=${COMMIT_MSG:-"Update code"}

# Add all changes
git add .

# Commit
git commit -m "$COMMIT_MSG"

# Push (this triggers Vercel auto-deployment)
echo ""
echo "Pushing to GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Code pushed to GitHub!"
    echo "🔄 Vercel is automatically deploying your changes..."
    echo "📊 Check deployment status at: https://vercel.com/dashboard"
else
    echo ""
    echo "❌ Push failed. Check your git configuration."
fi
