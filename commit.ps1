param(
    [Parameter(Mandatory = $true, HelpMessage = "Enter a commit message")]
    [string]$Message
)

# Ensure the gallery index is updated
python3 .git/hooks/pre-commit

git add .
git commit -m "$Message"
git push -u origin main
