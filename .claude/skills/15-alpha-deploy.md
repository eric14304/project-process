---
name: alpha-deploy
description: 內部測試 Alpha 階段 - DevOps 部署至 SIT 環境。執行正式 SIT 部署，確認環境穩定後開放內部測試。
---

# Alpha 階段 - 部署至 SIT 環境

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於部署流程
- SIT 部署是手動執行還是透過 GitLab CI/CD 自動化？
- 部署前的 checklist（DB migration / config / secrets）是否有範本？
- 部署失敗的 rollback 流程？

### 關於環境驗證
- 部署完成後的 smoke test 由誰執行（DevOps / PM）？
- 健康檢查端點（health check API）是否標準化？
- Log 收集工具（ELK / CloudWatch / 其他）？

### 關於通知
- SIT 部署完成後通知哪些人？
- SIT 環境的存取權限如何管理（誰有帳號）？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）
1. 部署前 checklist 確認
2. 執行部署
3. Smoke test
4. 通知測試人員

## 完成條件（TBD）
- [ ] SIT 環境部署成功
- [ ] Smoke test 通過
- [ ] 測試人員已收到通知

## 下一步
`/alpha-report`（產出測試報告）
