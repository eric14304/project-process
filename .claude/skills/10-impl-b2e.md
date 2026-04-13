---
name: impl-b2e
description: 實作進行階段 - B2E 後端實作。根據 SOW 規格設計並實作 DB Schema、API，包含文件化與 code review 流程。
---

# 實作進行階段 - B2E 後端實作

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於技術規範
- 後端主要技術棧（Node.js / Spring Boot / Python / 其他）？
- DB 類型（PostgreSQL / MySQL / MongoDB）？
- API 規範：RESTful / GraphQL？是否要求 OpenAPI/Swagger 文件？

### 關於開發流程
- GitLab branch 策略（Git Flow / trunk-based）？
- Commit message 規範（conventional commits）？
- Code review 是強制還是選擇性？reviewer 是誰？
- CI pipeline 在此階段是否需要設定（lint/test/build）？

### 關於與其他角色協作
- API 規格由 B2E 定義還是 PM 主導？何時交給 F2E？
- 如何追蹤 API 開發進度（GitLab issue / Swagger）？
- B2E 與 DevOps 的環境建置是否需要協調時序？

### 關於測試
- B2E 是否需要撰寫單元測試？覆蓋率要求？
- Integration test 由誰負責？
- API mock 是否需要提前提供給 F2E？

### 關於文件
- API 文件存放位置（Swagger UI / Google Drive / GitLab wiki）？
- DB Schema 文件是否需要獨立維護？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）
1. DB Schema 設計與 review
2. API 規格定義（交 F2E 參考）
3. 實作與單元測試
4. Code review
5. 部署至 SIT 前確認

## 完成條件（TBD）
- [ ] 所有 API 依 SOW 完成實作
- [ ] Swagger 文件已更新
- [ ] Code review 通過
- [ ] 單元測試通過

## 下一步
`/impl-integration`（配合 F2E 整合）
