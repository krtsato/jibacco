# Jibacco Backend

## 環境構築

開発環境  
使い回すファイルは事前に配置する

```zsh
% pwd # ~/jibacco

# setup directories, files, databases and volume
% ./backend/main_api/cmd/init/dev.sh

# start puma server
% compose/dev.sh up -d main_api
```
