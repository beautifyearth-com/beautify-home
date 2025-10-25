# Testing Locally - Important Info

## ⚠️ Why Forms Don't Work When Opening HTML Directly

When you double-click `index.html` and open it in a browser, the URL looks like:
```
file:///C:/Users/evan/CascadeProjects/beautify-homepage/index.html
```

**Problems with `file://` protocol:**
1. ❌ CORS restrictions prevent API calls
2. ❌ Some JavaScript features are blocked
3. ❌ Forms can't submit to external APIs
4. ❌ jQuery might not load properly

## ✅ Solution: Use a Local Web Server

You MUST run a local web server to test forms and API calls.

### Method 1: VS Code Live Server (Easiest)

1. **Install Extension:**
   - Open VS Code
   - Go to Extensions (Ctrl+Shift+X)
   - Search for "Live Server"
   - Install it

2. **Start Server:**
   - Open the `beautify-homepage` folder in VS Code
   - Right-click `index.html`
   - Select "Open with Live Server"
   - Browser opens automatically at `http://127.0.0.1:5500`

3. **Test Newsletter:**
   - Scroll to footer
   - Enter email
   - Click Subscribe
   - Should work! ✅

### Method 2: Python HTTP Server

```bash
# Navigate to folder
cd C:\Users\evan\CascadeProjects\beautify-homepage

# Start server (Python 3)
python -m http.server 8000

# Open browser to:
http://localhost:8000
```

### Method 3: Node HTTP Server

```bash
# Navigate to folder
cd C:\Users\evan\CascadeProjects\beautify-homepage

# Start server (installs if needed)
npx http-server -p 8000

# Open browser to:
http://localhost:8000
```

### Method 4: PHP Server (if you have PHP)

```bash
cd C:\Users\evan\CascadeProjects\beautify-homepage
php -S localhost:8000
```

## 🧪 Testing Checklist

Once you have a local server running:

### Newsletter Form Test
1. ✅ Scroll to footer
2. ✅ Enter email: `test@example.com`
3. ✅ Click "Subscribe"
4. ✅ Should see success message
5. ✅ Check your API/database for the email

### Contact Form Test
1. ⚠️ Will NOT work yet (needs update)
2. See `CONTACT-FORM-SOLUTIONS.md` for fix

### Featured Artists Test
1. ✅ Scroll to "Featured Artists" section
2. ✅ Should see 4 artist cards load
3. ✅ Click an artist card
4. ✅ Should open artist profile

## 🔍 Debugging

### Check Browser Console

1. Open browser DevTools (F12)
2. Go to Console tab
3. Look for errors

**Common errors:**

```
CORS error
→ You're using file:// protocol
→ Solution: Use local web server

$ is not defined
→ jQuery didn't load
→ Solution: Use local web server

Failed to fetch
→ API is down or CORS issue
→ Check network tab
```

### Check Network Tab

1. Open DevTools (F12)
2. Go to Network tab
3. Submit newsletter form
4. Look for request to `api.beautifyearth.com`

**What to check:**
- Status: Should be 200 or 201
- Response: Should show success
- If 404: API endpoint doesn't exist
- If 500: Server error

## 🚀 Best Practice

**For Development:**
Use VS Code Live Server - it's the easiest and auto-refreshes when you make changes.

**For Testing Before Deploy:**
Use any of the HTTP server methods to ensure everything works exactly as it will in production.

**For Production:**
Deploy to Netlify - everything will work perfectly!

## 📝 Current Status

| Feature | Local (file://) | Local (http://) | Production |
|---------|----------------|-----------------|------------|
| Static content | ✅ Works | ✅ Works | ✅ Works |
| Newsletter form | ❌ Blocked | ✅ Works | ✅ Works |
| Featured artists | ❌ Blocked | ✅ Works | ✅ Works |
| Contact form | ❌ Broken | ❌ Needs fix | ❌ Needs fix |

## 🎯 Quick Start

**Right now, do this:**

1. Open VS Code
2. Install "Live Server" extension
3. Open `beautify-homepage` folder
4. Right-click `index.html` → "Open with Live Server"
5. Test the newsletter form
6. It should work! ✅

**Then:**
- Deploy to Netlify to test in production
- Fix contact form (choose Netlify Forms or API endpoint)
- Done!
