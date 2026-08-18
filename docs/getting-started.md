# DeepSeek Harness 入门（本仓库）

## 一句话

**Agent = 模型（脑子）+ Harness（手脚、规矩、插件）。**  
`dsh` 是 DeepSeek 开源的那根缰绳：模型、工具、沙箱、会话、UI、循环本身都是插件。

当前官方状态：开发者预览，会有破坏性变更。本体仓库约 15 万 star。

## 不要只用 npx：用桌面端

可以不用天天敲 `npx @deepseek-ai/dsh web`。

推荐：[anywhere-labs/deepseek-harness-desktop](https://github.com/anywhere-labs/deepseek-harness-desktop)

- Windows / Apple Silicon macOS 有安装包
- **不必单独装 Node.js**
- 把官方 Harness 的 Web UI + Host 装进原生窗口、托盘
- 下载：<https://www.dshdesktop.cn/api/downloads/windows> 或 GitHub Releases

Linux 或想跟源码：仍可用 `npx @deepseek-ai/dsh web`（默认 `http://127.0.0.1:3080`）。

桌面端底层还是同一套 dsh；插件命令对 `web` / `desktop` profile 都适用，装之前看 Desktop 文档里的 profile 名。

## 第一周插件（生产力 + 你点名要玩的）

在本机（已装 `dsh` 或 Desktop 自带 CLI）执行：

```bash
bash scripts/install-week1-plugins.sh
```

或在设置里装 **dshmarket**，再搜索安装。

| 用途 | 插件 |
|---|---|
| 市场 | `dshmarket` |
| 对话找插件 | `dsh-find-plugin` |
| 拖文件进对话 | `dsh-file-upload` / `dsh-file-drop` |
| MCP 可视化 | `Js2Hou/dsh-mcp-manager` |
| 工作台 / 看板 | `dsh-web-ui` 或 workbench / better-sidebar（别三套全开） |
| 桌宠 / 鲸鱼 | `whale-on-desk`、`dsh-whale-animation`、`dsh-desktop-pet`、`dsh-codex-pet` |
| UI 皮肤层 | `Physicolor/harness-ui-enhancer` |

**警告：** 插件 = 本机第三方代码，权限接近你本人。先在没密钥的环境试。

## 高星仓库

见 `vendor/README.md`。本机：

```bash
bash scripts/clone-dsh-mirrors.sh
```

## 多 Agent 与控电脑

- dsh 可以派 **subagent**；复杂并行才拆，见 `.agents/governance/MULTI_AGENT_ORCHESTRATION.md`
- 本机运行就能读文件、跑终端、装插件；办公可以，别把网银和未隔离生产机交给 Full Access

## 技能

已从 `-SKILL-` 的 `arena/01a0095c-skill` 装入 `.agents/skills/`（最小组，不是 2000+ 全库）。
