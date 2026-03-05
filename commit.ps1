param(
    [Parameter(Mandatory = $true, HelpMessage = "Enter a commit message")]
    [string]$Message
)

git add .
git commit -m "$Message"
git push -u origin main
