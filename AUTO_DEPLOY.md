# Automatic Deployments Setup

## How It Works

Once Vercel is connected to your GitHub repository, **every time you push code to GitHub, Vercel automatically deploys the new version**. Your live site updates automatically! 🚀

## Setup Steps (One-Time)

### Option 1: Via Vercel Web Interface (Recommended)

1. **Go to Vercel**: https://vercel.com/new
2. **Sign in with GitHub** (use your `meraria` account)
3. **Import your repository**:
   - Click "Import Git Repository"
   - Find and select `meraria/floating-cat-faces`
   - Click "Import"
4. **Deploy settings**:
   - Framework Preset: "Other" (or it will auto-detect)
   - Root Directory: `./` (leave as is)
   - Build Command: (leave empty - it's a static site)
   - Output Directory: (leave empty)
5. **Click "Deploy"**

That's it! Now every push to GitHub will automatically deploy.

### Option 2: Via Vercel CLI

If you prefer command line:

```bash
# Make sure you're logged in
vercel login

# Link your project (first time only)
cd /Users/merarianiga/floating-cat-faces
vercel link

# Deploy (this will also set up auto-deployments)
vercel --prod
```

## How Automatic Deployments Work

1. **You make changes** to your code locally
2. **You commit and push** to GitHub:
   ```bash
   git add .
   git commit -m "Your changes"
   git push origin main
   ```
3. **Vercel detects the push** via GitHub webhook
4. **Vercel automatically builds and deploys** your site
5. **Your live site updates** in ~30 seconds!

## Viewing Deployments

- **Vercel Dashboard**: https://vercel.com/dashboard
- You'll see a new deployment for every push
- Each deployment gets a unique URL
- Production URL stays the same (your main site)

## Workflow Example

```bash
# 1. Make changes to index.html
# 2. Commit changes
git add index.html
git commit -m "Add new feature"

# 3. Push to GitHub
git push origin main

# 4. Vercel automatically deploys! ✨
# Check your Vercel dashboard to see the deployment
```

## Benefits

✅ **No manual deployment needed**  
✅ **Instant updates** when you push  
✅ **Deployment history** - see all versions  
✅ **Preview deployments** for pull requests  
✅ **Rollback** to previous versions if needed

