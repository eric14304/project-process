---
name: impl-devops
description: 實作進行階段 - DevOps Infra 工程。規劃並建置雲端或地端基礎設施，含 CI/CD pipeline、環境分離（SIT/UAT/PROD）。
---

# 實作進行階段 - DevOps / Infra 工程

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於基礎設施
- 專案是雲端（AWS/GCP/Azure）還是地端（客戶機房）還是混合？
- 容器化方案：Docker Compose / Kubernetes / 其他？
- 是否有客戶端 IT 需要配合（防火牆/VPN/白名單）？

### 關於環境規劃
- SIT/UAT/PROD 三環境是否都需要從此階段建置？
- 各環境規格是否依照客戶需求文件（如國泰案的 VM 規格）？
- 環境建置文件（runbook）是否需要交付給客戶？

### 關於 CI/CD
- GitLab CI 是否已有範本可復用？
- CD 到 SIT 是否自動化（push to develop 自動部署）？
- 部署通知是否串 Slack？

### 關於資安
- SSL 憑證申請由誰負責（客戶 IT / 我方）？
- 弱點掃描工具是否在此階段準備（OWASP ZAP / 其他）？
- 是否需要配合 ISO 27001 / 等保要求？

### 關於 MIS 兼任
- DevOps 由 MIS 兼任，工時如何與主要職務協調？
- 緊急狀況（環境掛掉）的 on-call 機制是什麼？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）
1. Infra 架構圖規劃
2. 環境建置（SIT 優先）
3. CI/CD pipeline 設定
4. 安全設定（SSL/防火牆）
5. 交付運維文件

## 完成條件（TBD）
- [ ] SIT 環境建置完成
- [ ] CI/CD pipeline 正常運作
- [ ] 環境文件已建立

## 下一步
`/sit-test`（SIT 部署）
