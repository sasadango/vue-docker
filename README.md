# dockerとvue-cliを使ってvue.jsの開発環境を構築する

## イメージビルドとコンテナデプロイ
### dockerコマンドを使用する場合
```
$ docker build -t vue_app_image .
$ docker run -v `pwd`:/usr/src/app -p 9050:9050 --name app -it -d vue_app_image
```

### docker-composeコマンドを使用する場合
```
$ docker-compose up -d --build
```

## コンテナに入る
### dockerの場合
```
$ docker exec -it app sh
```

### docker-composeの場合
```
docker-compose exec app sh
```

## vueプロジェクト立ち上げ
```
/usr/src/app # vue create .
```

## ローカルサーバ立ち上げ
### ポート設定
``` 
# vue.conofig.js
module.exports = {
  devServer: {
    port: 9050,
    host: '0.0.0.0',
    disableHostCheck: true,
  },
};
```
### 起動
```
/usr/src/app # npm run serve
```
http://localhost:9050 にアクセスして確認

