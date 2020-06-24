# Jibacco

年配者が心理的な障壁を抱えることなく  
若者にコーチングを依頼できるサービス  
鋭意制作中

<br>

## 環境

- Docker
- Ruby on Rails API
- MySQL
- Redis
- Nginx
- React
- Redux
- TypeScript
- Firebase Authentication
- GitHub Actions
- Swagger
- AWS

<br>

## 実装予定の機能

- Must
  - ユーザ の CRUD
    - コーチ・受講者
    - コーチング指導・受講履歴
    - プロフィール情報
  - 資料の CRUD
    - 画像または PDF ファイル
    - YouTube 動画の埋め込み
  - コーチング予約の CRUD
    - カレンダー上での日時の入力
    - メールまたは Slack による通知
- Want
  - ユーザ画像の CRUD
    - 画像のリサイズ
  - 達成度評価
    - 受講数と復習数に応じた数値レベル
  - モバイル対応
    - まずは Android 優先
  - ダークモード

<br>

## 環境構築

```zsh
# setup directories, files, databases and volumes
% ./backend/main_api/cmd/init/dev.sh
% ./frontend/cmd/init/dev.sh

# start services
% compose/dev.sh up -d --build
```
