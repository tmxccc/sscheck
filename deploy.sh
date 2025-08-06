#!/bin/bash

# 不锈钢牌号查询工作站 - Vercel 部署脚本
# 作者：唐淼 (台州国富)

echo "🚀 开始部署到 Vercel..."

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI 未安装"
    echo "请运行: npm install -g vercel"
    exit 1
fi

# 检查是否已登录
if ! vercel whoami &> /dev/null; then
    echo "🔐 请先登录 Vercel"
    vercel login
fi

# 部署到生产环境
echo "📦 部署到生产环境..."
vercel --prod

echo "✅ 部署完成！"
echo "🌐 您的网站已部署到 Vercel"
echo "📊 访问 https://vercel.com/dashboard 查看部署状态"