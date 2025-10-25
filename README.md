# Beautify Earth - Complete Website

Complete static site from Webflow export with dynamic featured artists section.

## Features

- ✅ Exact Webflow design (perfect spacing & layout)
- ✅ Dynamic featured artists from API on homepage
- ✅ All pages included (home, contact, services, blog)
- ✅ 30+ blog posts ready to go
- ✅ Fully responsive
- ✅ Ready to deploy

## Pages Included

- **Homepage** (`index.html`) - With featured artists section
- **Contact** (`contact-us.html`) - Contact form
- **Services** (`services.html`) - Services overview
- **Blog** (`blog/`) - 30+ blog posts including weekly Scooop
- **Site Map** (`site-map.html`) - Easy navigation for testing

👉 **Open `site-map.html` to see all pages**

## Local Development

### Option 1: Python HTTP Server
```bash
python -m http.server 8000
```
Then open: http://localhost:8000

### Option 2: Node HTTP Server
```bash
npx http-server -p 8000
```
Then open: http://localhost:8000

### Option 3: VS Code Live Server
1. Install "Live Server" extension
2. Right-click `index.html`
3. Select "Open with Live Server"

## Deploy to Netlify

### Easy Way (Drag & Drop)
1. Go to https://app.netlify.com/drop
2. Drag the entire `beautify-homepage` folder
3. Done! Your site is live

### Git Way
1. Initialize git: `git init`
2. Add files: `git add .`
3. Commit: `git commit -m "Initial commit"`
4. Push to GitHub
5. Connect to Netlify

## File Structure

```
beautify-homepage/
├── index.html              # Main homepage
├── css/
│   ├── normalize.css       # CSS reset
│   ├── webflow.css         # Webflow base styles
│   ├── beautify-homepage.webflow.css  # Main styles
│   └── featured-artists.css           # Featured artists styles
├── js/
│   └── featured-artists.js            # API integration
├── images/                 # All images
├── fonts/                  # Custom fonts
└── videos/                 # Video assets
```

## Featured Artists

The featured artists section automatically fetches 4 artists from:
`https://art.beautifyearth.com/api/artist/search`

To modify:
- Edit `js/featured-artists.js` to change API endpoint or number of artists
- Edit `css/featured-artists.css` to change styling

## Notes

- All Webflow CSS is preserved exactly as exported
- No build process required
- No dependencies to install
- Pure HTML/CSS/JS
