# Jibacco Swagger

## 環境構築

- 開発環境のみ
- index.yml をルートにしてファイル分割している
- swagger-ui-watch
  - バンドルファイル openapi.yml を生成する
  - 各ファイルを監視・リロードする

```zsh
% pwd # ~/jibacco

# setup directories, files and volume
% ./swagger/cmd/init/dev.sh

# start nginx server for swagger
% compose/dev.sh up -d swagger
```
