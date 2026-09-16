# 网站维护交接说明（Mac / 换机器用）

> **一句话**：代码在 GitHub，**改完 push 就自动上线**，不需要登录 Cloudflare。

---

## 🌐 基本信息

| 项目 | 值 |
|---|---|
| 线上地址 | https://zzzsf777.pages.dev |
| 代码仓库 | https://github.com/zzzsf777/personal-site |
| 托管 | Cloudflare Pages（已连接 GitHub，push 自动部署） |
| 类型 | **纯静态单文件网站**（HTML + CSS + JS 全在 `index.html` 里，无需构建、无后端） |

---

## 🍎 Mac 上首次准备

```bash
# 1. 配置 git 身份（只需一次）
git config --global user.name "zzzsf777"
git config --global user.email "zzzsf777@users.noreply.github.com"

# 2. 克隆仓库
git clone https://github.com/zzzsf777/personal-site.git
cd personal-site

# 3. 配置 GitHub 认证（首次 push 需要，二选一）
#    方式 A：安装 gh CLI（推荐）
brew install gh && gh auth login
#    方式 B：用 Personal Access Token（GitHub → Settings → Developer settings → Tokens）
```

---

## ✏️ 日常修改流程

```bash
git pull                      # ① 先同步（重要，避免和另一台机器冲突）

# ② 修改 index.html（所有内容都在里面，文件内有注释标注每个可改位置）

# ③ 本地预览
open index.html               # 直接打开看效果
# 或起个本地服务：python3 -m http.server 8080

# ④ 上线
git add -A
git commit -m "描述改了什么"
git push                      # ← push 后 15-30 秒自动部署
```

然后刷新 https://zzzsf777.pages.dev 就能看到新版 ✅

---

## 📌 关键规则

1. **不需要 Cloudflare 账号或凭据** —— push 即自动部署
2. **改之前先 `git pull`** —— 可能另一台机器（Windows）改过
3. **一次只在一台机器上改** —— 避免两边同时改导致冲突
4. **只需要改 `index.html`** —— 其他文件不用碰

---

## 📁 文件说明

| 文件 | 作用 |
|---|---|
| `index.html` | **整个网站**（HTML + CSS + JS 单文件，零外部依赖） |
| `README.md` | 详细说明，含**所有可改位置**的注释指引 |
| `HANDOFF.md` | 本文件（换机器交接用） |
| `.gitignore` | 忽略规则（不含任何密钥或账号信息） |

---

## 🎨 可改位置速查（都在 index.html 里）

| 想改什么 | 搜索关键词 |
|---|---|
| 名字 / 大标题 | `你好，我是` |
| 打字机轮播文字 | `const words = [` |
| 自我介绍 | `关于我` |
| 数据卡数字 | `data-count` |
| 技能卡片 | `skill reveal` |
| 项目卡片 | `proj reveal` |
| 联系方式 | `contact-item` |
| 配色主题 | 文件开头 `:root{` 里的 `--c1 / --c2 / --c3` |
| 页脚 | `<footer>` |

---

## 🛠 给 AI 助手的上下文

> 这是一个**纯静态单文件个人主页**：`index.html` 内含全部 HTML/CSS/JS，无框架、无构建步骤、无外部 CDN 依赖（国内打开也快）。
> 视觉风格：深色科技感（粒子背景 + 打字机 + 玻璃拟态卡片 + 滚动动效）。
> 修改时：直接编辑 `index.html`；配色集中在前面的 `:root` CSS 变量里；所有可改内容附近都有中文注释标记。
> 部署：`git push` 即可，Cloudflare Pages 会自动构建上线（约 15-30 秒），**无需任何部署命令**。
