---
name: sit-test
description: 內部測試 SIT 階段 - 部署 SIT + 整合測試執行。部署至 SIT 環境（含 Smoke test），PM/Sales/Account 搭配 AI 輔助執行整合測試，記錄並分類問題。
---

# SIT 階段 - 部署 SIT + 整合測試執行

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於部署
- SIT 部署是手動執行還是透過 GitLab CI/CD 自動化？
- 部署前 checklist（DB migration / config / secrets）是否有範本？
- 部署失敗的 rollback 流程為何？
- Smoke test 由誰執行（DevOps / PM）？健康檢查端點是否標準化？
- SIT 部署完成後通知哪些人？SIT 環境存取權限如何管理？

### 關於測試分工
- 測試由 PM/Sales/Account 執行，如何按功能模組分工？
- AI 輔助測試的具體執行方式（提供測試指引 / 自動記錄問題）？
- DevOps/B2E/F2E 是否需要陪測（特別是整合點）？

### 關於問題分類
- Bug 嚴重度分級標準（P0 系統無法使用 / P1 功能錯誤 / P2 顯示問題）？
- 「不符規劃」vs「Bug」如何區分？是否影響工時？
- 問題記錄在 GitLab issue 還是測試報告 Sheet？

### 關於測試環境
- SIT 環境測試資料如何準備（seed data）？
- 測試帳號/角色如何設定？
- 測試過程中若需要修 bug，測試暫停還是繼續？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）

**Part A：SIT 部署**
1. 部署前 checklist 確認（DB migration / config / secrets）
2. 執行 SIT 部署（手動或 CI/CD）
3. Smoke test 驗證環境可用
4. 通知測試人員開放測試

**Part B：整合測試執行**
1. 測試環境確認（帳號/資料/角色）
2. 按測試案例逐一執行
3. 問題記錄與嚴重度分類（P0/P1/P2）
4. 產出問題清單，建立 GitLab issue
5. 移交開發修正（→ `/sit-fix`）

## 完成條件（TBD）
- [ ] SIT 環境部署成功，Smoke test 通過，測試人員已通知
- [ ] 所有測試案例執行完畢
- [ ] 問題已分類並建立 GitLab issue
- [ ] 測試報告更新

## 下一步
- **有問題（P0/P1）** → `/sit-fix`，修正後回到 `/sit-test` 重新驗證（迭代）
- **通過** → `/uat-deploy`
