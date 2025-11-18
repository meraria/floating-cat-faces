# Deployment Guide

## Prerequisites

To deploy this project to GitHub and Vercel, you'll need:

1. **GitHub account** - https://github.com
2. **Vercel account** - https://vercel.com
3. **Git** (already installed ✓)
4. **GitHub CLI** (optional, for easier setup)
5. **Vercel CLI** (optional, for easier setup)

## Option 1: Using Web Interfaces (Easiest)

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `floating-cat-faces` (or any name you prefer)
3. Choose **Public** or **Private**
4. **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click **Create repository**

### Step 2: Push to GitHub

After creating the repository, GitHub will show you commands. Run these in your terminal:

```bash
cd /Users/merarianiga/floating-cat-faces
git remote add origin https://github.com/YOUR_USERNAME/floating-cat-faces.git
git branch -M main
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username.

### Step 3: Deploy to Vercel

1. Go to https://vercel.com
2. Sign in with your GitHub account
3. Click **Add New Project**
4. Import your `floating-cat-faces` repository
5. Vercel will auto-detect it's a static site
6. Click **Deploy**

That's it! Your site will be live in seconds.

## Option 2: Using CLI Tools

### Install GitHub CLI

```bash
# macOS
brew install gh

# Or download from: https://cli.github.com/
```

### Install Vercel CLI

```bash
npm install -g vercel
# Or
npx vercel
```

### Authenticate and Deploy

```bash
# Login to GitHub
gh auth login

# Create repository and push
gh repo create floating-cat-faces --public --source=. --remote=origin --push

# Login to Vercel
vercel login

# Deploy
vercel --prod
```

## Project Structure

This is a static HTML site, so no build process is needed. Vercel will serve the `index.html` file directly.

