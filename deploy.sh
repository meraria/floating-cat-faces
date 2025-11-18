#!/bin/bash

# Deployment script for Floating Cat Faces
# This script helps you deploy to GitHub and Vercel

set -e

echo "🚀 Floating Cat Faces - Deployment Helper"
echo "=========================================="
echo ""

# Check if git is configured
if ! git config user.name > /dev/null 2>&1; then
    echo "⚠️  Git user not configured. Please set your git identity:"
    echo ""
    read -p "Enter your name: " GIT_NAME
    read -p "Enter your email: " GIT_EMAIL
    git config user.name "$GIT_NAME"
    git config user.email "$GIT_EMAIL"
    echo "✅ Git configured!"
    echo ""
fi

# Check for GitHub CLI
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI found"
    
    # Check if authenticated
    if gh auth status &> /dev/null; then
        echo "✅ GitHub authenticated"
        
        read -p "Create GitHub repository? (y/n): " CREATE_REPO
        if [[ $CREATE_REPO == "y" ]]; then
            read -p "Repository name (default: floating-cat-faces): " REPO_NAME
            REPO_NAME=${REPO_NAME:-floating-cat-faces}
            
            read -p "Make it public? (y/n): " IS_PUBLIC
            if [[ $IS_PUBLIC == "y" ]]; then
                gh repo create "$REPO_NAME" --public --source=. --remote=origin --push
            else
                gh repo create "$REPO_NAME" --private --source=. --remote=origin --push
            fi
            echo "✅ Repository created and pushed!"
        fi
    else
        echo "⚠️  Not authenticated with GitHub"
        echo "Run: gh auth login"
    fi
else
    echo "⚠️  GitHub CLI not found"
    echo ""
    echo "To install GitHub CLI:"
    echo "  brew install gh"
    echo "  # Or visit: https://cli.github.com/"
    echo ""
    echo "Or create repository manually at: https://github.com/new"
    echo "Then run:"
    echo "  git remote add origin https://github.com/YOUR_USERNAME/floating-cat-faces.git"
    echo "  git branch -M main"
    echo "  git push -u origin main"
fi

echo ""
echo "=========================================="

# Check for Vercel CLI
if command -v vercel &> /dev/null; then
    echo "✅ Vercel CLI found"
    
    read -p "Deploy to Vercel? (y/n): " DEPLOY_VERCEL
    if [[ $DEPLOY_VERCEL == "y" ]]; then
        vercel --prod
        echo "✅ Deployed to Vercel!"
    fi
else
    echo "⚠️  Vercel CLI not found"
    echo ""
    echo "To deploy via web interface:"
    echo "  1. Go to https://vercel.com"
    echo "  2. Sign in with GitHub"
    echo "  3. Import your repository"
    echo "  4. Click Deploy"
    echo ""
    echo "Or install Vercel CLI:"
    echo "  npm install -g vercel"
    echo "  vercel login"
    echo "  vercel --prod"
fi

echo ""
echo "✨ Done! Your site should be live soon."

