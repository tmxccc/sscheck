# Vercel 部署指南

## 🚀 快速部署到 Vercel

### 方法一：通过 Vercel CLI（推荐）

1. **安装 Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **登录 Vercel**
   ```bash
   vercel login
   ```

3. **部署项目**
   ```bash
   # 预览部署
   vercel
   
   # 生产部署
   vercel --prod
   ```

### 方法二：通过 GitHub + Vercel 网站

1. **将代码推送到 GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/your-username/stainless-steel-query-station.git
   git push -u origin main
   ```

2. **在 Vercel 网站部署**
   - 访问 [vercel.com](https://vercel.com)
   - 点击 "New Project"
   - 导入你的 GitHub 仓库
   - Vercel 会自动检测并部署

### 方法三：拖拽部署

1. 访问 [vercel.com](https://vercel.com)
2. 将整个项目文件夹拖拽到 Vercel 网站
3. 自动部署完成

## 📋 部署配置说明

### vercel.json 配置
- **静态文件托管**：使用 `@vercel/static` 构建器
- **SPA 路由**：所有路由重定向到 `index.html`
- **安全头部**：添加了安全相关的 HTTP 头部
- **缓存策略**：静态资源长期缓存，HTML 文件不缓存

### 环境要求
- Node.js 14+ （Vercel 构建环境）
- 无需服务器端代码
- 纯静态网站

## 🔧 自定义域名

1. 在 Vercel 项目设置中添加自定义域名
2. 配置 DNS 记录指向 Vercel
3. 自动获得 SSL 证书

## 📊 性能优化

Vercel 自动提供：
- **全球 CDN**：快速内容分发
- **自动压缩**：Gzip/Brotli 压缩
- **图片优化**：自动优化图片格式
- **缓存策略**：智能缓存管理

## 🌐 访问地址

部署成功后，您将获得：
- **预览地址**：`https://your-project-name.vercel.app`
- **生产地址**：`https://your-project-name.vercel.app`
- **自定义域名**：配置后可使用自己的域名

## 📝 注意事项

1. **免费额度**：Vercel 提供慷慨的免费额度
2. **构建时间**：静态网站构建很快，通常几秒钟
3. **自动部署**：连接 GitHub 后，每次推送都会自动部署
4. **环境变量**：如需要，可在 Vercel 控制台配置

## 🔍 故障排除

如果部署失败：
1. 检查 `vercel.json` 配置
2. 确保所有文件路径正确
3. 查看 Vercel 构建日志
4. 检查文件大小限制（100MB）

---

**项目信息**
- 名称：不锈钢牌号查询工作站
- 版本：1.3.0
- 作者：唐淼 (台州国富)
- 部署平台：Vercel