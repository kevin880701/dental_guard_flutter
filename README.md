# 口腔衛教

## 主要功能

- **使用者管理**：提供登入、註冊、保持登入狀態等功能。
- **班級與學生管理**：教師可新增/編輯班級，並管理班級內的學生名單與個人資料。
- **牙菌斑偵測**：透過手機相簿選取或直接拍照，對牙齒照片進行 AI 偵測，分析牙菌斑分佈。
- **潔牙記錄**：記錄學生的每一次潔牙狀況，方便長期追蹤。
- **數據分析與圖表**：
  - 提供班級平均牙菌斑百分比、平均使用次數等統計數據。
  - 生成牙菌斑與使用次數的排名圖表。
  - 支援下載指定時間範圍的數據報表。
- **權限管理與意見回饋**：包含儲存權限處理與使用者意見反饋機制。

---

## 🛠️ 技術棧與開發環境

- **主要框架**：Flutter 3.29.1
- **程式語言**：Dart, Kotlin 1.8.22
- **Android Gradle Plugin**：8.7.0
- **Android SDK**：
  - compileSdk: 35
  - minSdk: 24
  - targetSdk: 35
- **IDE**：Android Studio Meerkat | 2024.3.1
- **Java**：JDK 11

---

## 📁 專案結構

```

lib
├── core/                 # 核心共用模組
│   ├── base/             # 基礎設定
│   ├── constants/        # 常數
│   ├── models/           # 資料模型
│   ├── network/          # 網路請求
│   ├── providers/        # 狀態管理
│   ├── utils/            # 工具函式
│   └── widgets/          # 共用 UI 元件
├── features/             # 各功能模組
│   ├── analyze/          # 數據分析
│   ├── auth/             # 身份驗證
│   ├── group/            # 班級管理
│   ├── launch/           # 啟動頁
│   ├── login/            # 登入
│   ├── main/             # 主畫面
│   ├── member/           # 成員管理
│   ├── organization/     # 機構
│   ├── system/           # 系統功能
│   └── teeth\_detection/  # 牙菌斑偵測
│       └── teeth\_record/ # 潔牙記錄
├── routes/               # 路由管理
├── firebase\_options.dart # Firebase 設定檔
└── main.dart             # App 進入點

````

---

## 🌐 API 

**Stage 環境**：

* Domain: [https://letgo.stage.jieniguicare.org](https://letgo.stage.jieniguicare.org)
* API 文件: [https://letgo.stage.jieniguicare.org/api-docs/](https://letgo.stage.jieniguicare.org/api-docs/)

**Production 環境**：

* Domain: [https://letgo.jieniguicare.org](https://letgo.jieniguicare.org)
* API 文件: [https://letgo.jieniguicare.org/api-docs/](https://letgo.jieniguicare.org/api-docs/)

---
