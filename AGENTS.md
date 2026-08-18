# scz-dsh 项目 Agent 入口

本仓库是孙承泽的 DeepSeek Harness 入门与插件实验场。

技能来源：`sunccchengze/-SKILL-` 分支 `arena/01a0095c-skill`。本仓库只装了本阶段需要的最小技能组，完整库仍在 `-SKILL-`。

## 指令层级

1. 用户当前明确要求与安全/法律边界
2. 本文件与 `docs/` 中的项目事实
3. `.agents/governance/`
4. 被选中的 `.agents/skills/*/SKILL.md`

## 本轮已调用的技能

- **主技能**：`universal-skill-router` — 最小组队、不把历史项目事实带进来
- **支撑**：`agent-harness-construction`、`bojie-li-perspective`（Agent = 模型 + Harness）
- **编排参考**：`multi-agent-orchestration`（只在真能并行时用）
- **审查**：`verification-before-completion`、`stop-slop`

明确不调用：科研全库、英仔爱心社品牌技能、风电/叶轮机械历史事实。

## 默认流程

1. 读本仓库 `docs/getting-started.md`
2. 用户本机用 Desktop 或 `dsh web` 跑官方 harness
3. 插件用 `scripts/install-week1-plugins.sh` 或 dshmarket
4. 高星源码用 `scripts/clone-dsh-mirrors.sh`，不要把 `vendor/mirrors` 提交进 Git
