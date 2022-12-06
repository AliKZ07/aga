# Add all changes in the repo to the staging area
Write-Host "✔ Add all changes in the your repo to the staging area..."
git add -A | Out-Null

# git commit
Start-Sleep -Seconds 2;$message = Read-Host "🖊 Tell me a specified commit message"
git commit -m $message | Out-Null

# Push the changes to the remote repository
Write-Host "⬆ Push the changes to the remote repository..."
git push -u origin main --quiet

# Display the Git log
Write-Host "--Last 5 commit--"
git log --pretty=oneline --abbrev-commit --decorate --graph -n 5