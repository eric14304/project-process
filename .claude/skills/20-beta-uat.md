---
name: beta-uat
description: 客戶驗收 Beta 階段 - 客戶執行驗收。準備驗收單與測試清單，引導客戶自行測試，收集回饋，取得簽核。
---

# Beta 階段 - 客戶驗收執行

## 前置條件
- Alpha 修正完成，功能已部署至 PROD（或 Beta 環境）
- 已知本次驗收涵蓋的模組與對應報價單號

## 輸入資訊
- **本次驗收模組**（主平台 / 新增模組 / 追加功能）
- **對應報價單號**（用於驗收單 Items 欄位）
- **部署完成日期**（填入驗收單 Items 說明）

---

## 執行步驟

### Step 1｜準備測試清單（Google Sheets）
建立 Google Sheets，依功能流程逐項列出測試項目：

```
頁面/功能 | 測試步驟 | 預期結果 | 測試結果（Pass/Fail）| 備註
```

- 建立「前台」與「後台」分頁
- 每個主要流程一個分區（對應 UI 流程編號）
- 測試項目粒度：一個操作步驟一列
- 完成後將連結放入驗收單 No.附件項目

### Step 2｜產出驗收單（Customer Acceptance Form）

驗收單格式（依百靈佳案標準）：

```
Customer Acceptance Form

Project Name:  {專案名稱}
Customer:      {客戶名稱}
Version 1.0.0  Issued {YYYY-MM-DD}

No. | Items                        | 報價單 / 採購單號 | Check | Approval
----|------------------------------|-------------------|-------|----------
 1  | {模組名稱}                    | {報價單號}        |       |
    | {交付範疇條列說明}            |                   |       |
    | 本機制已於{日期}更新{環境}    |                   |       |
 2  | 附件：平台測試驗收             |                   |       |
    | <前台> {Google Sheets URL}    |                   |       |
    | <後台> {Google Sheets URL}    |                   |       |

Customer Approvals:
SugarFun Project Manager: Signature___ Name___ Date___
{客戶代表}:               Signature___ Name___ Date___
```

> 驗收單為英文格式（Customer Acceptance Form），Items 用中文說明
> 每個重大模組/里程碑發一份獨立驗收單（不合併在一份）
> 每份驗收單對應一張或多張報價單號

### Step 3｜客戶自行測試（約 2 週）
- 提供驗收單草稿與測試清單 Google Sheets 給客戶
- SF 支援期間回應問題，不主動測試代替客戶
- 區分反饋類型：
  - **驗收問題**：原範疇內的 bug / 功能不符 → 進入 beta-fix
  - **新需求（CR）**：超出原報價範疇 → 另開追加報價流程

### Step 4｜收集簽核
- 客戶確認測試通過後，簽署驗收單（書面或 email 確認+掃描回傳）
- SF PM 簽署，存檔為 PDF
- 命名規範：`{客戶}_{專案}驗收單_{模組}_{YYYYMMDD}.pdf`

---

## 完成條件
- [ ] 測試清單 Google Sheets 已建立並提供客戶
- [ ] 驗收單（Customer Acceptance Form）已送出
- [ ] 客戶反饋已分類（驗收問題 / CR）
- [ ] 驗收單已由雙方簽署

## 下一步
- 有驗收問題 → `/beta-fix`
- 有 CR → 另開追加報價（`/proposal-quote`）
- 全數通過 → `/prod-deploy`
