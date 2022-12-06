# Prompt the user to enter a value
# $prompt = "Enter a value"

# Read the user's input and store it in a variable
# $input = Read-Host -Prompt $prompt


# Add all changes in the repo to the staging area
Write-Host "✔ Add all changes in the your repo to the staging area..."
git add -A

# git commit
$message = Read-Host "🖊 Tell me a specified commit message"
git commit -m $message

# $prompt = "🖊 Tell me a specified commit message"
# $input = Read-Host -Prompt $message
# git commit -m "$message"

# Push the changes to the remote repository
Write-Host "⬆ Push the changes to the remote repository"
git push -u origin main

# Display the Git log
git log --pretty=oneline --abbrev-commit --decorate --graph -n 5