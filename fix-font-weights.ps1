# Fix Avenir Next font weights
$file = 'C:\Users\evan\CascadeProjects\beautify-homepage\css\beautify-homepage.webflow.css'
$content = Get-Content $file -Raw

# Find all instances of Avenir Next with font-weight and change them
# Change 700 to 600 (Bold to Semi-Bold)
# Change 800 to 700 (Heavy to Bold) - though 800 might not exist

# We need to be careful to only change font-weight values that come after "font-family: Avenir Next"
# Use regex to find the pattern and replace

# Split content into lines for processing
$lines = Get-Content $file

$inAvenirBlock = $false
$newLines = @()

foreach ($line in $lines) {
    if ($line -match 'font-family:\s*Avenir Next') {
        $inAvenirBlock = $true
        $newLines += $line
    }
    elseif ($inAvenirBlock -and $line -match 'font-weight:\s*700') {
        # Change 700 to 600
        $newLines += $line -replace 'font-weight:\s*700', 'font-weight: 600'
        $inAvenirBlock = $false
    }
    elseif ($inAvenirBlock -and $line -match 'font-weight:\s*800') {
        # Change 800 to 700
        $newLines += $line -replace 'font-weight:\s*800', 'font-weight: 700'
        $inAvenirBlock = $false
    }
    elseif ($inAvenirBlock -and ($line -match 'font-weight:' -or $line -match '}' -or $line -match 'font-family:')) {
        # End of Avenir block
        $inAvenirBlock = $false
        $newLines += $line
    }
    else {
        $newLines += $line
    }
}

# Write back
$newLines | Set-Content $file

Write-Host "Font weights updated successfully!" -ForegroundColor Green
Write-Host "Changed all Avenir Next font-weight: 700 to 600" -ForegroundColor Cyan
Write-Host "Changed all Avenir Next font-weight: 800 to 700" -ForegroundColor Cyan
