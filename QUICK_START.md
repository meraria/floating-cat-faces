# Quick Start - Deploy to GitHub & Vercel

## 🎯 Fastest Path (5 minutes)

### Step 1: Create GitHub Repository (2 min)

1. Open: https://github.com/new
2. Repository name: `floating-cat-faces`
3. Choose **Public** or **Private**
4. **Important:** Do NOT check "Add a README file" (we already have files)
5. Click **"Create repository"**

### Step 2: Push Your Code (1 min)

After creating the repo, GitHub shows you commands. Run these:

```bash
cd /Users/merarianiga/floating-cat-faces

# Add your GitHub username here
git remote add origin https://github.com/YOUR_USERNAME/floating-cat-faces.git

# Set main branch
git branch -M main

# Push code
git push -u origin main
```

**Replace `YOUR_USERNAME` with your actual GitHub username!**

### Step 3: Deploy to Vercel (2 min)

1. Go to: https://vercel.com
2. Click **"Sign Up"** or **"Log In"**
3. Choose **"Continue with GitHub"** (this connects your accounts)
4. Click **"Add New Project"**
5. Find and select `floating-cat-faces` repository
6. Click **"Deploy"**

**That's it!** Your site will be live in ~30 seconds. 🎉

---

## 🔄 Alternative: Use the Helper Script

If you prefer automation, run:

```bash
./deploy.sh
```

This will guide you through the process interactively.

---

## 📝 Notes

- Your site is a static HTML file, so no build process needed
- Vercel will automatically detect and deploy it
- Future pushes to GitHub will auto-deploy to Vercel (if you enable it)

