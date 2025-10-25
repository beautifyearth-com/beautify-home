# Git setup for beautifyearth-com organization
Set-Location C:\Users\evan\CascadeProjects\beautify-homepage

# Configure git (if not already configured globally)
git config user.email "support@beautifyearth.com"

# Create initial commit
git commit -m "Initial commit: Beautify Earth homepage, blog, and contact page"

# Rename branch to main
git branch -M main

Write-Host "`n========================================" -ForegroundColor Green
Write-Host "Git repository initialized successfully!" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Green

Write-Host "Next Steps:" -ForegroundColor Yellow
Write-Host "`n1. Create the repository on GitHub:" -ForegroundColor Cyan
Write-Host "   Go to: https://github.com/organizations/beautifyearth-com/repositories/new"
Write-Host "`n2. Repository settings:" -ForegroundColor Cyan
Write-Host "   Name: beautify-home"
Write-Host "   Description: Beautify Earth homepage, blog, and contact page, and other pages if needed"
Write-Host "   Visibility: Private"
Write-Host "   DO NOT initialize with README, .gitignore, or license"
Write-Host "`n3. After creating the repo on GitHub, run:" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/beautifyearth-com/beautify-home.git"
Write-Host "   git push -u origin main"
Write-Host "`n========================================`n" -ForegroundColor Green
