# 🎨 GitHub Heatmap Art - CHROME

Create the word "CHROME" or any other word or art that you would like on your GitHub contribution heatmap using backdated commits.
## check my 2024 heatmap

![Example Result](image.png)

## 🚀 Quick Start

**Windows (PowerShell):**
```powershell
# 1. Configure Git with your GitHub email
git config user.email "your-github-email@example.com"

# 2. Run the script
.\make_commits.ps1

# 3. Push to GitHub
git push origin main
```

**Linux/macOS (Bash):**
```bash
# 1. Configure Git with your GitHub email
git config user.email "your-github-email@example.com"

# 2. Make script executable and run
chmod +x make_commits.sh
./make_commits.sh

# 3. Push to GitHub
git push origin main
```

## 📁 Files

- **`make_commits.ps1`** - Main script for Windows (creates light green pattern)
- **`make_commits.sh`** - Main script for Linux/macOS (same functionality)
- **`make_dark_commits.ps1`** - Creates darker green pattern (10x commits)
- **`chrome-dates.txt`** - Date layout grid for the CHROME pattern
- **`preview_heatmap.ps1`** - Preview the pattern before committing
- **`heatmap_preview.html`** - Web preview of the heatmap

## ⚙️ How It Works

1. Script creates 200+ commits backdated to 2024 (or any year you choose)
2. Each commit adds a comment to `index.html`
3. GitHub shows green squares on those dates
4. Pattern spells "CHROME" across your contribution graph

## 🎨 Customization

**Create Your Own Word/Art:**
1. Edit `chrome-dates.txt` - Replace dates with your pattern layout
2. Run `parse_dates.ps1` to convert dates to proper format
3. Copy the output into `make_commits.ps1` (replace the dates array)
4. Change the year (e.g., `2024` → `2025` or any year you want)
5. Run your custom script!

**Examples of what you can create:**
- Your name or initials
- Words like "HELLO", "CODE", "ART"
- Simple pixel art (hearts, stars, etc.)
- Any pattern that fits the GitHub heatmap grid

**Any year works:** Just change `2024` to `2023`, `2025`, or any year you prefer!

## 🎯 Options

**Windows:**
- **Light Green**: Run `make_commits.ps1` once
- **Dark Green**: Use `make_dark_commits.ps1` 
- **Preview First**: Run `preview_heatmap.ps1` to see the pattern

**Linux/macOS:**
- **Light Green**: Run `./make_commits.sh` once
- **Dark Green**: Create your own dark version or run the script multiple times
- **Preview**: Use `heatmap_preview.html` in browser

## 🔄 Reset

**Windows (PowerShell):**
```powershell
git reset --hard [commit-before-script]
git push --force-with-lease origin main
```

**Linux/macOS (Bash):**
```bash
git reset --hard [commit-before-script]
git push --force-with-lease origin main
```

**That's it!** Your 2024 GitHub heatmap will show "CHROME" in green squares. 🎨
