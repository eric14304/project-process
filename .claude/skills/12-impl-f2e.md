---
name: impl-f2e
description: 實作進行階段 - F2E 前端實作。根據 UX/UI 設計稿與 B2E API 規格，實作前端介面。
---

# 實作進行階段 - F2E 前端實作

> 🚧 草稿待完善 — 以下為待確認問題清單

## 待補充問題（逐一確認後完善此 SKILL）

### 關於技術規範
- 前端框架（React / Vue / Next.js / 其他）？
- CSS 方案（Tailwind / styled-components / SCSS）？
- 元件庫（Ant Design / Material UI / 自製）？

### 關於與 UI 協作
- RWD 斷點規範由 UI 定義還是 F2E 自行判斷？
- 動畫/互動效果的規格如何傳達？

**已知**：UI 交付格式為流程編號 PDF（非 Figma）
- 每個使用者流程獨立一份 PDF（例：`1.0寵物資訊流程.pdf`、`2.0點數兌換優惠券流程.pdf`）
- 編號對應 wireframe/UI 過稿時使用的流程號（0.0, 1.0, 2.0...）
- 特殊功能有獨立 PDF（例：`000商品序號登錄流程.pdf`、`店家後台.pdf`）
- Final 資料夾 = 客戶確認後的最終交付版本，F2E 以此為準

**已知**：前端分批打包交付格式
- 大型系統依批次/階段分批交付（P1-1, P1-2, P2...），每批次獨立打包
- 每批打包內容包含：
  - **source code**（zip，含 Angular/Vue/React 等框架原始碼）
  - **wireframe 參照檔**（供 IT 整合對照）
  - **程式清單 PPT**（逐 component/資料夾說明結構，方便客戶 IT 接手維護）
  - **前端相關文件 docx**（技術參考文件，記錄安裝環境配置 + 每個 component 的路徑、說明與使用範例，供客戶 IT 開發人員接手後使用）
  > 程式清單 PPT（結構 Overview）與前端相關文件 docx（Component API 參考）是兩份不同的交付物，分工不同，不可混淆
- 打包檔可加密：密碼另行傳送（PW.txt 或 email），不放在同一個包裡
- 每批交付時同步產出 **DemoSite 驗收文件**：列出驗收網址、驗收項目（逐頁截圖比對 wireframe），供 SIT 流程使用
  - 文件結構：Demo 網址 → 本批次驗收功能範圍清單 → PC 畫面（逐功能截圖）→ Mobile 畫面（逐功能截圖）
  - 截圖命名格式：`{功能區塊} - {子功能/狀態}`（例：首頁 - Banner、職缺內頁 - 空值狀態）
  - 若測試環境有技術限制（如 LINE 分享被封鎖、測試 IP 限制），需在對應截圖項下附文字說明原因

**已知**：版控記錄追蹤（大型案需雙軌追蹤）
- SF 每次 source code 交付使用 **git commit hash** 作為版本識別
  - 命名格式：`{客戶}_{專案}_{hash}_sourcecode_{日期}.zip`（例：`cathay_imatch2025_sourcecode_a1b2c3d4.zip`）
  - 附有加密密碼時，密碼檔命名：`{原檔名}_密碼.zip` 或 `PW.txt` 另行傳送
- 客戶 IT 合版後有獨立的 build ID（例：`fnd-web-imatch_364546.zip`）
- 需在版控記錄表中追蹤 **SF 交付 hash ↔ 客戶 IT build 編號** 的對應關係，避免 merge 時版本混淆
- 每次 delivery 紀錄：日期 / SF 打包檔（含 hash）/ 客戶合版檔 / 說明（含哪些 Phase/Layer/功能）

### 關於與 B2E 協作
- API 尚未完成時，F2E 如何 mock 資料（MSW / json-server）？
- API 文件不清楚時的溝通方式？
- 串接問題如何在 GitLab 中追蹤？

### 關於開發流程
- F2E 是否也遵循相同 branch 策略？
- F2E 是否需要 code review？
- 前端效能標準（Lighthouse score 要求）？

### 關於多語系/無障礙
- 是否需要多語系（i18n）？
- 無障礙規範（WCAG）是否有要求？

---

## 暫定執行結構（待問題確認後完善）

### 執行步驟（TBD）
1. 開發環境設定
2. 元件開發（Design System → 頁面）
3. API 串接
4. Code review
5. 整合測試準備

## 完成條件（TBD）
- [ ] 所有頁面依設計稿完成
- [ ] API 串接完成
- [ ] Code review 通過

## 下一步
`/impl-integration`
