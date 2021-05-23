# GCPUG Shimane #02-01
##
1. Cloud Functions
- lambda
1. App Engine
- Heroku
1. Countainar Engine
- コンテナ
1. Compute Engine
- EC2
- 上のレイヤーになるほどメンテナンスが楽
- Googleはここ10年すべてのサービスをコンテナで動かしてきた
- 毎週20億コンテナ
- VM vs Container
    - ゲストOSがないぶんリソース少なくて済む
    - 軽量・ポータブル・効率性
- Node -> Master -> API/UI/CLI
- Deployment で Replicasetを管理する
- Pod = デプロイする単位
    - ラベルとメタデータでひも付け
    - kubectlとyaml
- Service
    - NATみたいなもの？
    - どっちかというとロードバランサーか
- ローリングアップデート
    - 1つ殺して1つ立ち上げ方式
- 新旧のコンテナが混在するのが嫌ならブルーグリーンデプロイも可能
    - リソース2倍かかるデメリット
- Googleはラベルでコンテナを管理する文化
- ConfigMap
    - 秘匿情報などを管理
- Secret
    - 暗号化する
- Minikube
    - ローカル環境で動かす
- Container-Optimized OS
    - Alpine的な？

## Google Cloud Speech API

## 機械学習データをBigQueryとRubyで処理してみた

## Googleアドリブトーク
- スタックドライバー
    - モニタリングツール
    - ロギング
        - スタックドライバーからBigQueryに流して分析するのが一般的
