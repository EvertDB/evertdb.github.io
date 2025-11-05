# Migration script for moving c-flat to MicrosoftLearning/c-sharp-minor
# Run this script AFTER creating the new repository in MicrosoftLearning organization

Write-Host "=== C# minor Migration Script ===" -ForegroundColor Cyan
Write-Host ""

# Check if the new repository exists (you need to create it first)
$newRepoUrl = "https://github.com/MicrosoftLearning/c-sharp-minor.git"

Write-Host "Before running this script, ensure you have:" -ForegroundColor Yellow
Write-Host "1. Created the new repository: MicrosoftLearning/c-sharp-minor" -ForegroundColor Yellow
Write-Host "2. Have write access to the MicrosoftLearning organization" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Enter to continue or Ctrl+C to cancel..."
Read-Host

try {
    # Add the new remote
    Write-Host "Adding new remote 'microsoft-learning'..." -ForegroundColor Green
    git remote add microsoft-learning $newRepoUrl

    # Push all branches and tags to the new repository
    Write-Host "Pushing all content to new repository..." -ForegroundColor Green
    git push microsoft-learning --all
    git push microsoft-learning --tags

    # Update the origin to point to the new repository
    Write-Host "Updating origin remote..." -ForegroundColor Green
    git remote set-url origin $newRepoUrl

    # Remove the temporary remote
    git remote remove microsoft-learning

    Write-Host ""
    Write-Host "=== Migration Complete! ===" -ForegroundColor Green
    Write-Host "Repository successfully moved to: $newRepoUrl" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "1. Enable GitHub Pages in the new repository settings" -ForegroundColor White
    Write-Host "2. Set Pages source to 'GitHub Actions'" -ForegroundColor White
    Write-Host "3. The site will be available at: https://microsoftlearning.github.io/c-sharp-minor/" -ForegroundColor White
    Write-Host ""
}
catch {
    Write-Host "Error during migration: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Please check that the new repository exists and you have access." -ForegroundColor Red
}