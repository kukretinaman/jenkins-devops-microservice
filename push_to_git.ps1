# Set the commit message
$commitMessage = "Automatic commit"

# Check if the current directory is a Git repository
if (Test-Path .git) {
    # Add all changes
    git add .

    # Commit the changes with the specified message
    git commit -m "$commitMessage"

    # Push the changes to the remote repository
    git push -u origin main
} else {
    Write-Error "This is not a Git repository."
}