@echo off
rem ============================================================
rem  One-click update: commit -> push to GitHub -> deploy to Cloudflare
rem  Just double-click this file after changing the website.
rem ============================================================
setlocal
cd /d "%~dp0"
set "HTTPS_PROXY=http://127.0.0.1:10808"
set "HTTP_PROXY=http://127.0.0.1:10808"

echo ============================================================
echo   Update personal website  (zzzsf777.pages.dev)
echo ============================================================
echo.

echo [1/3] Committing changes...
git add -A
git commit -m "update website" 2>nul || echo       (nothing new to commit)

echo [2/3] Pushing to GitHub...
git push 2>&1 | findstr /v "Everything up-to-date"

echo [3/3] Deploying to Cloudflare Pages...
call npx --yes wrangler@latest pages deploy . --project-name=zzzsf777 --branch=main

echo.
echo ============================================================
echo   Done!  https://zzzsf777.pages.dev
echo ============================================================
pause
