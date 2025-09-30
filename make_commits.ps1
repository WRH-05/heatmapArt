# make_commits.ps1 - PowerShell version for Windows
# Script to create "CHROME" on 2024 GitHub heatmap

$file = "index.html"

# Dates to form "CHROME" on 2024 GitHub heatmap
$dates = @(
    # Letter C (weeks 6-10)
    "2024-02-11", "2024-02-18", "2024-02-25",  # top horizontal
    "2024-02-05",                               # left vertical top
    "2024-02-12",                               # left vertical middle  
    "2024-02-19",                               # left vertical
    "2024-02-26",                               # left vertical
    "2024-03-04",                               # left vertical bottom
    "2024-03-10", "2024-03-17",                 # bottom horizontal
    
    # Letter H (weeks 12-16)
    "2024-02-26", "2024-03-04", "2024-03-11", "2024-03-18", "2024-03-25",  # left vertical
    "2024-03-01", "2024-03-08", "2024-03-15", "2024-03-22", "2024-03-29",  # right vertical
    "2024-03-13", "2024-03-14",                                             # middle horizontal
    
    # Letter R (weeks 18-22)
    "2024-03-18", "2024-03-25", "2024-04-01", "2024-04-08", "2024-04-15",  # left vertical
    "2024-03-24", "2024-03-31",                                             # top horizontal
    "2024-04-02", "2024-04-05",                                             # middle horizontal
    "2024-03-26", "2024-04-09",                                             # right verticals
    "2024-04-11", "2024-04-16",                                             # diagonal
    
    # Letter O (weeks 24-28)
    "2024-04-07", "2024-04-14", "2024-04-21",                               # top horizontal
    "2024-04-01", "2024-04-08", "2024-04-15", "2024-04-22", "2024-04-29",  # left vertical
    "2024-04-05", "2024-04-12", "2024-04-19", "2024-04-26", "2024-05-03",  # right vertical
    "2024-04-28", "2024-05-05", "2024-05-12",                               # bottom horizontal
    
    # Letter M (weeks 30-34)
    "2024-04-22", "2024-04-29", "2024-05-06", "2024-05-13", "2024-05-20",  # left vertical
    "2024-05-02", "2024-05-09", "2024-05-16", "2024-05-23", "2024-05-30",  # right vertical
    "2024-04-25", "2024-05-01",                                             # middle peaks
    "2024-05-03", "2024-05-08",                                             # middle verticals
    
    # Letter E (weeks 36-40)
    "2024-05-13", "2024-05-20", "2024-05-27", "2024-06-03", "2024-06-10",  # left vertical
    "2024-05-19", "2024-05-26",                                             # top horizontal
    "2024-06-01", "2024-06-02",                                             # middle horizontal
    "2024-06-09", "2024-06-16"                                              # bottom horizontal
)

Write-Host "Creating commits for CHROME heatmap art..."
Write-Host "Total commits to create: $($dates.Count)"

foreach ($d in $dates) {
    # Append a small harmless line so each commit changes the file
    Add-Content -Path $file -Value "<!-- commit for $d -->"
    
    # Set git environment variables for the commit date
    $env:GIT_AUTHOR_DATE = "${d}T12:00:00+00:00"
    $env:GIT_COMMITTER_DATE = "${d}T12:00:00+00:00"
    
    # Stage and commit the file
    git add $file
    git commit -m "art: $d"
    
    Write-Host "Created commit for $d"
}

Write-Host ""
Write-Host "Done creating commits!"
Write-Host "Now run: git push origin main"
Write-Host ""
Write-Host "Note: Make sure you're on the correct branch and have set up your remote repository."