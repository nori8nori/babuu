# README

【アプリ名】

やっぱり我が子が世界一 我が子自慢サイトBABUU

【アプリケーションの概要】

・ユーザー登録

・プロフィール登録（編集機能付き）

・コメント投稿

・画像投稿（複数枚投稿可）

・登録している全ユーザーの投稿閲覧

・登録されている全ユーザーのプロフィール閲覧

【本番環境】

《デプロイ先》

https://babuu28719.herokuapp.com

《テストアカウント》

・ID:admin

・Pass:2222

《テスト用アカウント》

・メールアドレス:test@gmail.com

・Pass:test88

【制作背景】

私は赤ちゃんが好きで、好きに順位などつくはずがないと考えていました。しかし、プログラミングを学習する中で思考が整理され、一番可愛い赤ちゃんは「我が子だ」ということに気がつきました。自分の子供が可愛いという気持ちを外にも向けたい。見せびらかしたい。自慢したい。しかし、誹謗中傷に晒させる可能性は避けたい。そこで、我が子を自慢するだけに特化した閉鎖的な場を作り、他者の投稿を閲覧できるがアクションはできない、只々我が子を自慢する場を設けてみてはどうかという思いから作成いたしました。

【DEMO】

新規登録:
https://gyazo.com/56de1ca66582318602360bb01de92c3a

プロフィール登録:
https://gyazo.com/023853160fd4a61679d2290e326f7c47

プロフィール編集:
https://gyazo.com/7b2fdc802b3f76f87655d3d2511a453b

投稿（1枚）:
https://gyazo.com/faefd7a21c0f933f0568b5d6e38a565e

投稿（複数画像）:
https://gyazo.com/bcf73ea7a03a84e9c84b8d3cb2506bf5

【工夫したポイント】

「複数画像を投稿できる」「’devise’エラーハンドリングの日本語化」はテックキャンプで学習していない部分ですので自分で1から調べました。こうした方が便利だという思いから導入いたしました。

【実装予定の内容】

・「無限いいね機能」を追加しようと考えています。これは、批判は受け付けないが称賛は受入れ高め合おうという理念のもと作成いたします。また、1つの投稿に対して１いいねだけに止めてしまうのはもったいないと考えています。本当に共感した場合はいいねを100回押しても足りないくらいです。そのために、いいね押せるだけ押せて反映させた機能が無限いいね機能です。「JavaScript/Ajax」で使用可能かと思われます。

・「アンチアカウント抹消機能」を追加しようと考えております。これは、「機械学習」もしくは禁止用語が含む文章を自動化で見つけ出し自動でブロックするというものです。機械学習ではPython、もしくはRubyの自動化で実現可能と考えています。


DB設計:
https://gyazo.com/f33d5ca6b935a36d20466d29063049d4


【アプリケーションで使用している技術】

・インフラ：heroku

・データベース：MySQL

・開発環境：visual studio code

・言語：Ruby

・フレームワーク：Ruby on Rails

【アクリケーションの機能】

・認証機能（ログイン）：devise

・コメント機能

・画像添付機能：mini_magick

## users テーブル

| Column         | Type     | Options     |
| -------------- | -------- | ----------- |
|                |          |             |

※divesの標準機能「名前」「パスワード」「パスワード再入力」を使用

### Association

- has_many :tweets
- has_many :profiles

## tweets テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- has_many_attached :images
- belongs_to :user

## profiles テーブル

| Column  | Type       | Options                        |
| ----    | ---------- | ------------------------------ |
| name    | string     | null: false                    |
| history | string     | null: false                    |
| purpose | string     | null: false                    |
| user    | references | null: false                    |

### Association

- has_one_attached :images
- belongs_to :user