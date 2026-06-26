# 🚀 Railway Deployment Guide

## ✅ Updated for Railway!

Your static site has been updated to work with Railway instead of Netlify. Here's what changed:

### What Changed:
- **Removed Netlify Forms** - Railway doesn't have built-in form handling
- **Added Formspree integration** - Free form service that works anywhere
- **Created Railway configuration** - `railway.toml`, `package.json`, `Dockerfile`
- **Updated contact form** - Now uses Formspree for submissions

---

## 🎯 Deploy to Railway (5 Minutes)

### Step 1: Set Up Formspree

1. **Go to:** https://formspree.io/
2. **Sign up** for a free account
3. **Create a new form:**
   - Form name: "Beautify Earth Contact"
   - Redirect URL: `https://your-site.railway.app/contact-us.html`
4. **Copy your form ID** (looks like: `abc123def`)
5. **Update the form action** in `contact-us.html`:
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

### Step 2: Deploy to Railway

#### Option A: GitHub Integration (Recommended)

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Ready for Railway deployment"
   git push origin main
   ```

2. **Go to:** https://railway.app/new
3. **Connect GitHub** and select your repository
4. **Select:** "Deploy from GitHub repo"
5. **Railway will automatically:**
   - Detect the Node.js service
   - Use the `Dockerfile` we created
   - Install dependencies and start the server

#### Option B: CLI Deployment

1. **Install Railway CLI:**
   ```bash
   npm install -g @railway/cli
   ```

2. **Login:**
   ```bash
   railway login
   ```

3. **Deploy:**
   ```bash
   railway deploy
   ```

### Step 3: Configure Your Service

1. **Go to your Railway dashboard**
2. **Click on your service**
3. **Settings → Environment Variables:**
   ```
   NODE_ENV=production
   PORT=3000
   ```

4. **Settings → Domains:**
   - Your site will be available at: `https://your-service-name.railway.app`
   - Add custom domain if needed

---

## 📧 Form Setup with Formspree

### Free Tier Features:
- ✅ 50 submissions/month
- ✅ Email notifications
- ✅ Spam protection
- ✅ No credit card required

### Configure Form Notifications:

1. **Go to your Formspree dashboard**
2. **Click on your form**
3. **Settings → Email:**
   - Add: `support@beautifyearth.com`
   - Enable: "Send email notifications"
4. **Settings → Redirect:**
   - Set success page: `https://your-site.railway.app/contact-us.html?success=true`

### Test the Form:

1. **Visit:** `https://your-site.railway.app/contact-us.html`
2. **Fill out and submit** the form
3. **Check:**
   - Formspree dashboard → Submissions
   - Your email inbox

---

## 🌐 Custom Domain (Optional)

### Add Your Domain

1. **Go to Railway:** Service → Settings → Domains
2. **Click:** Add Custom Domain
3. **Enter:** `www.beautifyearth.com`
4. **Update DNS records:**
   ```
   Type: CNAME
   Name: www
   Value: your-service-name.railway.app
   ```

### SSL Certificate

- ✅ **Automatic** - Railway provides free SSL
- ✅ **Auto-renewal** - No manual management needed

---

## 📊 What Works After Deployment

| Feature | Status | Notes |
|---------|--------|-------|
| Homepage | ✅ Works | With featured artists |
| About Page | ✅ Works | New page |
| Contact Form | ✅ Works | Formspree integration |
| Newsletter | ✅ Works | Your API |
| Blog Posts | ✅ Works | All 30+ posts |
| Featured Artists | ✅ Works | API integration |
| Services Page | ✅ Works | - |
| SSL Certificate | ✅ Auto | Free HTTPS |
| Custom Domain | ✅ Supported | Easy setup |

---

## 🔧 Railway Configuration Files

### `railway.toml`
```toml
[build]
builder = "NIXPACKS"

[deploy]
healthcheckPath = "/"
healthcheckTimeout = 100
restartPolicyType = "ON_FAILURE"
restartPolicyMaxRetries = 10
```

### `package.json`
```json
{
  "scripts": {
    "start": "npx http-server . -p 3000 -c-1",
    "build": "echo 'Static site - no build required'"
  }
}
```

### `Dockerfile`
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

---

## 💰 Cost Comparison

| Platform | Free Tier | Paid Tiers |
|----------|-----------|------------|
| **Railway** | $5/month credit | Hobby: $5/month, Pro: $20/month |
| **Netlify** | Free | Pro: $19/month, Business: $99/month |

**Railway Free Tier:**
- $5/month credit (usually covers small sites)
- 500 hours build time
- 100GB bandwidth
- Custom domains

---

## 🆘 Troubleshooting

### Form Not Submitting

**Check:**
1. Formspree form ID is correct in `contact-us.html`
2. Formspree account is active
3. JavaScript is enabled in browser

**Solution:**
Update the form action with your correct Formspree ID.

### Site Not Loading

**Check:**
1. Railway service is running
2. PORT environment variable is set to 3000
3. Build logs show no errors

**Solution:**
Check Railway logs in the dashboard.

### Featured Artists Not Loading

**Check:**
1. API endpoint is accessible: `https://art.beautifyearth.com/api/artist/search`
2. CORS is enabled on API
3. Browser console for errors

**Solution:**
API should work automatically. Contact API admin if issues persist.

---

## 🎉 Deployment Checklist

Before deploying:
- [x] Updated contact form for Formspree
- [x] Created Railway configuration files
- [x] Added Dockerfile for static site serving
- [x] All pages tested locally
- [x] All images and assets included

After deploying:
- [ ] Set up Formspree account and form
- [ ] Update form action with Formspree ID
- [ ] Test contact form submission
- [ ] Check form notifications
- [ ] Test newsletter signup
- [ ] Verify featured artists load
- [ ] Test all page links
- [ ] Add custom domain (optional)

---

## 🚀 Ready to Deploy!

**Everything is configured.** Just:

1. **Create Formspree account** and get your form ID
2. **Update the form action** in `contact-us.html` with your ID
3. **Push to GitHub** and connect to Railway
4. **Test the contact form**
5. **Done!** 🎉

**Your site will be live with:**
- ✅ Working contact form (Formspree)
- ✅ Working newsletter
- ✅ Featured artists
- ✅ All pages
- ✅ SSL certificate
- ✅ Custom domain support
- ✅ Railway hosting

---

## 📞 Support

**Railway Support:**
- Docs: https://docs.railway.app
- Discord: https://discord.gg/railway
- Status: https://status.railway.app

**Formspree Support:**
- Docs: https://help.formspree.io
- Email: support@formspree.io

---

## ✨ Next Steps

1. **Create Formspree account** - Get your form ID
2. **Update contact form** - Replace placeholder ID
3. **Deploy to Railway** - Push and deploy
4. **Test contact form** - Submit a test message
5. **Set up notifications** - Configure email alerts
6. **Add custom domain** - Point your domain to Railway
7. **Monitor submissions** - Check Formspree dashboard

**You're all set! 🚀**
