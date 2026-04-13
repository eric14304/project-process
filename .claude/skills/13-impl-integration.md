---
name: impl-integration
description: 實作進行階段 - 整合串接迭代。前後端串接、第三方系統整合，反覆迭代直到進入 SIT 測試條件。
---

# 實作進行階段 - 整合串接迭代

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於整合範疇
- 第三方系統整合清單（如 TW DIW OID4VCI/OID4VP、阜爾門禁 API）如何管理？
- 每個整合點是否有獨立的測試計畫？
- 整合失敗時的 fallback 策略是什麼？

### 關於迭代節奏
- Sprint 長度（1週/2週）？
- Sprint review 與誰進行（內部/含客戶）？
- 功能完成的定義（Definition of Done）是什麼？

### 關於問題追蹤
- Bug 與功能調整如何在 GitLab 中區分（label）？
- 優先級如何定義（P0/P1/P2）？
- 阻塞問題的升報流程？

### 關於進入 SIT 的條件
- 哪些功能必須完成才能進入 SIT？
- 是否有 smoke test checklist？
- 效能基準（response time / load）在此階段確認？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）
1. 整合清單建立
2. 逐項串接測試
3. Bug 修正迭代
4. SIT 進場條件確認
5. 觸發 SIT 部署

## 完成條件（TBD）
- [ ] 所有整合點測試通過
- [ ] P0/P1 bug 清零
- [ ] SIT 進場條件達標

## 下一步
`/sit-test`
