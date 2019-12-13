## SushiGuide
### SushiGuideとは
日本の美味しい寿司屋をガイドする、外国人向けのサービスです。

## アプリケーションURL
[URL](
### アプリケーション本番環境構成
![アプリケーション構成図](https://user-images.githubusercontent.com/1914543/65856224-02081c00-e39c-11e9-85c9-25897ddf09c5.png "構成図")
### アプリケーション機能一覧
* ログイン・ログアウト機能（アクティベーション）
* プロフィール編集機能
* イベント検索機能
* イベント応募(参加)機能
* イベント作成機能
* イベント出店情報機能
* 参加イベント一覧機能
* イベントグループチャット機能
* ユーザ間メッセージチャット機能(action cableを利用)
* ユーザ検索機能
## 使用技術
- 開発環境
  - Docker for Mac
- テスト環境
  - RSpec(単体テスト・統合テスト)
- 本番環境
  - Heroku
- DB
  - PostgresQL
- CI / CDパイプラインの構築
  - CircleCI
- フロント開発
  - Bootstrap
  - Slim
- ユーザー管理機能
  - devise
- 画像アップロード機能
  - CarrierWave
  - fog-aws
- ページネーション機能
  - kaminari
- 検索機能
  - ransack
- マップ機能
  - Google Maps Javascript API
## 依存関係
- Rails: 5.2.2.1
- Ruby: 2.6.2
- Bootstrap: 4.3.1
- RSpec 3.8