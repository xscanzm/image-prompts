# Cloudflare Pages 部署指南

## 自动部署（推荐）

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. 进入 **Workers & Pages** → **Create Application** → **Pages**
3. 选择 **Connect to Git**
4. 授权并选择此 GitHub 仓库 `xscanzm/image-prompts`
5. 配置如下：
   - **Framework preset**: None
   - **Build command**: 留空（纯静态站点，无需构建）
   - **Build output directory**: 留空（默认根目录）
6. 点击 **Save and Deploy**

## 自定义域名

1. 在 Pages 项目设置中，进入 **Custom Domains**
2. 添加 `www.aipipixia.online` 和 `aipipixia.online`
3. 在域名 DNS 设置中添加 CNAME 记录指向 Cloudflare Pages

## 环境变量（可选）

如需 Workers 功能，可在 Pages 项目设置 → **Settings** → **Environment Variables** 中添加。

## 手动部署（备选）

```bash
# 安装 Wrangler CLI
npm install -g wrangler

# 登录
wrangler login

# 部署
wrangler pages deploy . --project-name=aipipixia
```
