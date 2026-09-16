# 在 Mac 上对 Hermes 说这段话（可直接复制）

---

## 🍎 版本一：Mac 上第一次接手（推荐先看这个）

```
我在 Windows 上做好了个人网站，现在要在你这台 Mac 上继续维护。请按顺序来：

【项目信息】
- 线上地址：https://zzzsf777.pages.dev
- 代码仓库：https://github.com/zzzsf777/personal-site
- 托管：Cloudflare Pages（已连接 GitHub，push 即自动部署，15-30 秒上线）
- 类型：纯静态单文件网站（index.html 内含全部 HTML/CSS/JS，无框架、无构建步骤、无外部 CDN）

【第一步：环境检查与准备】
1. 检查本机 git 是否可用；没有就装（brew install git）
2. 检查能否访问 GitHub（国内需要代理）。如果连不上，先告诉我，别硬试
3. 把仓库克隆到合适的位置：
      git clone https://github.com/zzzsf777/personal-site.git
4. 克隆后**先读这两个文件**，里面的信息比我口述的完整：
      HANDOFF.md   ← 维护方式、注意事项
      README.md    ← 所有可修改位置（含注释指引）
5. 配置 git 身份（如未配置）：
      git config --global user.name "zzzsf777"
      git config --global user.email "zzzsf777@users.noreply.github.com"
6. 配置 GitHub 认证（首次 push 需要）：
      brew install gh && gh auth login
      （登录时浏览器会弹出授权页，你告诉我怎么做）

【第二步：今天要改的内容】
（把你要改的写在这里，例如：）
- 把「关于我」那段改成：……
- 加一个「作品展示」板块，放 3 个作品
- 配色从青蓝紫换成绿色系
- 联系方式换成真实的：邮箱 xxx、微信 xxx、GitHub zzzsf777

【重要规则（务必遵守）】
- 纯静态网站，**只需要编辑 index.html**，不要引入框架/构建工具/外部 CDN
- 改完执行：git add -A && git commit -m "描述" && git push
  → Cloudflare 会自动部署，**不需要登录 Cloudflare、不需要装 wrangler、不需要任何部署命令**
- **改之前先 git pull**（Windows 那边可能也改过）
- **一次只在一台机器上改**，避免冲突
- 本地预览：open index.html 即可（或 python3 -m http.server 8080）

【补充上下文】
- 视觉风格：深色科技感 —— Canvas 粒子背景（鼠标吸引）、打字机副标题、鼠标跟随光晕、
  玻璃拟态卡片（悬停光斑）、滚动淡入动画、顶部滚动进度条
- 配色集中在 index.html 开头的 :root CSS 变量（--c1 主色 / --c2 副色 / --c3 点缀色）
- 所有可改内容附近都有中文注释标记（搜索 <!-- 即可看到）
- 响应式已适配手机

请先完成第一、二步的准备和阅读，把仓库结构和你说看到的告诉我，确认没问题后再开始改内容。
```

---

## ☀️ 版本二：已经配好之后的日常（简短版）

```
继续维护我的个人网站，仓库：https://github.com/zzzsf777/personal-site

请先 git pull 同步，然后帮我改：…………（说你要改的）

改完 commit + push 就行，Cloudflare 会自动部署（约 15-30 秒），
不需要登录 Cloudflare 或执行任何部署命令。
```

---

## 💡 一句话备用（如果它问你项目背景）

```
这是一个纯静态单文件个人主页（个人品牌页），
深色科技感视觉风格，全部代码在 index.html 里，
通过 GitHub + Cloudflare Pages 自动部署。
```
