# Git setup script
cd C:\Users\evan\CascadeProjects\beautify-homepage

# Configure git
git config user.name "evanBeautify"
git config user.email "support@beautifyearth.com"

# Create initial commit
git commit -m "Initial commit: Beautify Earth homepage, blog, and contact page"

# Rename branch to main
git branch -M main

# Show status
Write-Host "`n=== Git Status ===" -ForegroundColor Green
git status

Write-Host "`n=== Next Steps ===" -ForegroundColor Yellow
Write-Host "1. Create a new repository on GitHub:"
Write-Host "   https://github.com/new" -ForegroundColor Cyan
Write-Host "`n2. Repository settings:"
Write-Host "   Name: beautify-home"
Write-Host "   Description: Beautify Earth homepage, blog, and contact page, and other pages if needed"
Write-Host "   Visibility: Private"
Write-Host "`n3. After creating the repo, run these commands:"
Write-Host "   git remote add origin https://github.com/evanBeautify/beautify-home.git" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
