# PowerShell 5.1 uyumludur.
# Bu betik mevcut klasoru PRIVATE GitHub reposu olarak yayimlar.
$ErrorActionPreference = 'Stop'

$RepoName = 'siber-guvenlik-hafta2-3-lab'
$RepoOwner = 'onur-alkan'
$FullRepo = "$RepoOwner/$RepoName"

Write-Host "[1/5] GitHub CLI kontrol ediliyor..."
gh --version | Out-Null
gh auth status

Write-Host "[2/5] Git deposu hazirlaniyor..."
if (-not (Test-Path '.git')) {
    git init
}
git branch -M main

git add .
if (-not (git diff --cached --quiet)) {
    git commit -m "Add week 2 and week 3 cybersecurity lab report"
} else {
    Write-Host "Commit edilecek yeni degisiklik yok."
}

Write-Host "[3/5] GitHub reposu kontrol ediliyor..."
$exists = $false
try {
    gh repo view $FullRepo --json name -q .name | Out-Null
    $exists = $true
} catch {
    $exists = $false
}

if (-not $exists) {
    Write-Host "PRIVATE repo olusturuluyor: $FullRepo"
    gh repo create $FullRepo --private --source . --remote origin --push
} else {
    Write-Host "Repo zaten var: $FullRepo"
    $origin = git remote get-url origin 2>$null
    if (-not $origin) {
        git remote add origin "https://github.com/$FullRepo.git"
    }
    git push -u origin main
}

Write-Host "[4/5] Repo gorunurlugu dogrulaniyor..."
gh repo view $FullRepo --json nameWithOwner,visibility,url

Write-Host "[5/5] Durum:"
git status
Write-Host "Bitti."
