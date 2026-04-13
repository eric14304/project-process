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
- F2E 拿到 Figma 後，直接實作還是需要 UI 說明？
- RWD 斷點規範由 UI 定義還是 F2E 自行判斷？
- 動畫/互動效果的規格如何傳達？

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
