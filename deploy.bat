@echo off
chcp 65001 >nul
echo 🚀 开始部署到 Vercel...

REM 检查是否安装了 Vercel CLI
vercel --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Vercel CLI 未安装
    echo 请运行: npm install -g vercel
    pause
    exit /b 1
)

REM 检查是否已登录
vercel whoami >nul 2>&1
if %errorlevel% neq 0 (
    echo 🔐 请先登录 Vercel
    vercel login
)

REM 部署到生产环境
echo 📦 部署到生产环境...
vercel --prod

echo ✅ 部署完成！
echo 🌐 您的网站已部署到 Vercel
echo 📊 访问 https://vercel.com/dashboard 查看部署状态
pause