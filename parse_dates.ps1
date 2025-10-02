# parse_dates.ps1 - Convert chrome-dates.txt to proper format

# Read the chrome-dates.txt file
$content = Get-Content "chrome-dates.txt" -Raw

# Create a hash table for month conversions
$monthMap = @{
    "jan" = "01"; "feb" = "02"; "mar" = "03"; "apr" = "04"; "may" = "05"; "jun" = "06"
    "jul" = "07"; "aug" = "08"; "sep" = "09"; "oct" = "10"; "nov" = "11"; "dec" = "12"
}

# Extract all date patterns (like "jan7", "feb15", etc.)
$datePattern = "([a-z]{3})(\d{1,2})"
$matches = [regex]::Matches($content, $datePattern, [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)

$formattedDates = @()

foreach ($match in $matches) {
    $month = $match.Groups[1].Value.ToLower()
    $day = $match.Groups[2].Value.PadLeft(2, '0')
    
    if ($monthMap.ContainsKey($month)) {
        $monthNum = $monthMap[$month]
        $formattedDate = "2024-$monthNum-$day"
        $formattedDates += $formattedDate
    }
}

# Remove duplicates and sort
$uniqueDates = $formattedDates | Sort-Object -Unique

Write-Host "Found $($uniqueDates.Count) unique dates:"
Write-Host ""

# Output in PowerShell array format
Write-Host '$dates = @(' -ForegroundColor Green
foreach ($date in $uniqueDates) {
    Write-Host "    `"$date`"," -ForegroundColor Yellow
}
Write-Host ')' -ForegroundColor Green

Write-Host ""
Write-Host "Copy the above array to replace the dates in make_commits.ps1"