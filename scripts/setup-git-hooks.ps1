# Git Hook 설정 스크립트 (Windows PowerShell)
# 사용법: .\scripts\setup-git-hooks.ps1

Write-Host "🔧 Setting up Git hooks..." -ForegroundColor Cyan

$hooksDir = ".git\hooks"
$preCommitHook = "$hooksDir\pre-commit"

# Git hooks 디렉토리 확인
if (-not (Test-Path $hooksDir)) {
    Write-Host "❌ Git hooks directory not found. Are you in a Git repository?" -ForegroundColor Red
    exit 1
}

# pre-commit hook이 이미 있는지 확인
if (Test-Path $preCommitHook) {
    Write-Host "⚠️  pre-commit hook already exists. Skipping..." -ForegroundColor Yellow
} else {
    Write-Host "✅ Git hooks are already set up!" -ForegroundColor Green
    Write-Host "`n💡 Note: Git hooks work best with Git Bash on Windows." -ForegroundColor Yellow
    Write-Host "   If you're using PowerShell/CMD, hooks may not run automatically." -ForegroundColor Yellow
    Write-Host "   In that case, run code quality checks manually:" -ForegroundColor Yellow
    Write-Host "   .\scripts\check-code-quality.ps1" -ForegroundColor Cyan
}

exit 0

