# 个人网站

科技感单页个人主页 · 纯静态（HTML/CSS/JS，零外部依赖）

## 🌐 线上地址

- **主站**：https://zzzsf777.pages.dev
- 代码仓库：https://github.com/zzzsf777/personal-site

## 📁 文件说明

| 文件 | 作用 |
|---|---|
| `index.html` | **整个网站**（HTML + CSS + JS 全在这一个文件里） |
| `更新网站.bat` | **一键更新**：提交 → 推 GitHub → 部署 Cloudflare |
| `启动网站服务.bat` | 本地预览（双击后浏览器开 http://localhost:8080） |
| `README.md` | 本说明 |

## ✏️ 怎么改内容

**所有可改的地方都用注释标好了**，打开 `index.html` 搜索 `<!--` 就能看到，例如：

```html
<!-- 修改第 1 处：浏览器标签标题 + 搜索描述 -->
<!-- 打字机：改下面的数组 = 改轮播的文字 -->
<!-- 联系：改这里的文字与链接 -->
```

常见修改点：

| 想改什么 | 位置 |
|---|---|
| 名字 / 大标题 | 搜 `你好，我是` |
| 打字机轮播文字 | 搜 `const words = [` |
| 自我介绍 | 搜 `关于我` |
| 技能卡片 | 搜 `skill reveal` |
| 项目卡片 | 搜 `proj reveal` |
| 联系方式 | 搜 `contact-item` |
| 配色 | 文件开头 `:root{` 里的 `--c1 / --c2 / --c3` |
| 数据卡数字 | 搜 `data-count` |

## 🚀 怎么更新上线

**双击 `更新网站.bat`** 即可（自动完成：提交 → 推 GitHub → 部署 Cloudflare）

> 前提：v2rayN 代理在运行（GitHub 需要代理）

## 🎨 配色变体

`E:\Tools\PersonalSite-preview\` 里有 3 个配色版本（紫粉 / 终端绿 / 蓝金），
想换配色时把对应文件的配色抄过来即可。

## 📌 备注

- 用的是 **Cloudflare 免费子域名**（`*.pages.dev`），暂未购买自有域名
- 买域名后绑定步骤：Cloudflare → Workers & Pages → zzzsf777 → Custom domains → 添加域名
- 网站数据全在 `index.html` 里，**没有后端**，不需要数据库
