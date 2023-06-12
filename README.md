# README

# アプリケーション名
## Anime Companion

# アプリケーション概要
"Anime Companion"はアニメファンのための便利なアプリで、情報提供とAI機能を組み合わせています。常に右下に美少女AIがいて、ユーザーは彼女と会話したり、アニメに関する情報を入手したりできます。

# URL
未デプロイ

# 利用方法
アニメ情報、コメントを閲覧するだけなら登録なしでも可能。
コメントや好きなアニメを登録したい場合は要新規登録。
新規登録はヘッダーの新規登録から行う。
アニメの感想や評価やらを自由にコメントしよう

# アプリケーションを作成した背景
自身のブログにオリジナリティを出すために、オリジナルのアニメ検索、一覧アプリを作成
またこのアプリをブログのトップに置いておくことにより、
似たような記事を減らして、ブログのクオリティ向上を図った。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/13ONyghjHVy58w5LQR5VdwaS3J8yiNE7gKrG8P7TJf40/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明


# 実装予定の機能
## 1.アニメ情報の提供:
アニメのリリース情報、放送スケジュール、キャスト情報などを提供します。
人気のアニメランキングやレビュー、視聴者のコメントも閲覧できます。

## 2.検索機能
年代、キャスト、制作会社、原作者、ジャンルなどでアニメを検索できます。

## 3.アニメのおすすめ機能:
ユーザーの好みや視聴履歴に基づいて、オススメのアニメを提案します。
ジャンルや人気度、評価などのフィルタリング機能を使って、アニメの検索や絞り込みができます。

## 4.アプリ内のブログ連携:
アプリ内でブログの最新記事を閲覧できるようにし、ユーザーが便利にアニメ情報とブログ記事を一元管理できます。

# データベース設計
[ER図](app/assets/images/ER%E5%9B%B3.png)

# 画面遷移図
[画面遷移図](app/assets/images/%E9%81%B7%E7%A7%BB%E5%9B%B3.png)


# テーブル設計

## users テーブル  (ユーザー情報)

| Column             | Type    | Options                      |
| ------------------ | ------- | ---------------------------- |
| name               | string  | null: false                  |ニックネーム
| email              | string  | null: false unique: true     |メールアドレス
| encrypted_password | string  | null: false                  |パスワード
| birth_date         |  date   | null: false                  |生年月日


### Association

- has_many :animes
- has_many :comments
- has_many :favorites


## Animes テーブル  (アニメ情報)

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| title         |  string    | null: false                   |アニメのタイトル
| description   |  text      | null: false                   |アニメの説明
| year          |  string    | null: false                   |アニメの年
| image_url     |  text      | null: false                   |アニメ画像
| quote         |  string    | null: false                   |画像の引用元
| production    |  string    | null: false                   |制作会社
| directed_by   |  string    | null: false                   |アニメ監督
| genre_id      | integer    | null: false                   |ジャンル（アクティブハッシュ）
| user          | references | null: false, foreign_key: true |投稿した人のID


### Association

- belongs_to :user
- has_many :Comments
- has_many :anime_favorites
- has_many :favorites,through: :anime_favorites
- has_many :voices
- has_many :voice,through: :anime_favorites



## Voice テーブル （声優情報）

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name1       |  string    |                                |声優
| name2       |  string    |                                |声優
| name3       |  string    |                                |声優
| name4       |  string    |                                |声優
| name5       |  string    |                                |声優
| name6       |  string    |                                |声優
| name7       |  string    |                                |声優
| name8       |  string    |                                |声優
| name9       |  string    |                                |声優
| name0       |  string    |                                |声優
| anime       | references | null: false  foreign_key: true |アニメのID

### Association

- has_many :animes
- has_many :voices,through: :anime_voice





## Anime_voice テーブル  (お気に入りとアニメの中間テーブル)

| Column      | Type     | Options                       |
| ----------- | -------- | ----------------------------- |
| voice       | references | null: false, foreign_key: true |声優テーブルのID
| anime       | references | null: false  foreign_key: true |アニメのID

### Association

- belongs_to :anime
- belongs_to :voice






## Comments テーブル  (コメント情報)

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     |  text      | null: false                    |コメント
| user        | references | null: false, foreign_key: true |コメントした人のID
| anime       | references | null: false  foreign_key: true |アニメのID

### Association

- belongs_to :user
- belongs_to :anime


## Favorites テーブル  (お気に入り情報)

| Column      | Type     | Options                       |
| ----------- | -------- | ----------------------------- |
| user        | references | null: false, foreign_key: true |お気に入りしたユーザーののID
| anime       | references | null: false  foreign_key: true |アニメのID

### Association

- belongs_to :user
- has_many :anime_favorites
- has_many :animes,through: :anime_favorites


## Anime_favorites テーブル  (お気に入りとアニメの中間テーブル)

| Column      | Type     | Options                       |
| ----------- | -------- | ----------------------------- |
| favorites   | references | null: false, foreign_key: true |お気に入りしたユーザーののID
| anime       | references | null: false  foreign_key: true |アニメのID

### Association

- belongs_to :anime
- belongs_to :favorites




# 開発環境

フロントエンド: HTML, CSS, JavaScript
バックエンド: RubyとRuby on Rails


# ローカルでの動作方法
以下のコマンドを順に実行

git clone https://github.com/meccheruda/Anime_Companion
## クローンしたアプリに移動
% cd Anime_Companion
## Gemをインストール
% bundle install
## JavaScriptのパッケージをインストール
% yarn install


# 工夫したポイント
まだ未定