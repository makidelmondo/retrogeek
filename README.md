# README

* アプリ名：Retro Geek

* 概要：ゲームソフトの貸し借りを目的とした掲示板、貸し借りの必須条件である損害保険の加入勧奨も行う

* Ruby version _6.0.0_

* URL：

* テスト用アカウント：

* 利用方法：貸主借主共にユーザー登録必須、貸主は所持ゲームをデータベースに登録する。借主はデータベース内に遊びたいゲームがあればコメント欄から貸出を依頼する。貸出期間に同意を得られたら借主は損害保険証券と身分証のコピーを貸主に提出することで貸借り契約が成立する。損害保険加入を義務付けるため、保険未加入の利用者はサイトのリンクから加入できる。貸主は加入分の広告料を得られる。

* 目的：損害保険広告料として収益を得ること、主に価格が高騰したレトロゲームを安価に遊ぶ機会を提供すること

* 要件：スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。

* 機能説明：実装した機能について、それぞれどのような特徴があるのか列挙しましょう。

* DB設計：ER図等を添付しましょう。

* ローカル：git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。

# DB 設計

## users table

| Column             | Type                   | Options                 -|
|--------------------|------------------------|--------------------------|
| nickname           | string                 | null: false              |
| email              | string                 | null: false unique: true |
| encrypted_password | string                 | null: false              |
| surname            | string                 | null: false              |
| name               | string                 | null: false              |
| kana_surname       | string                 | null: false              |
| kana_name          | string                 | null: false              |
| birthday           | date                   | null: false              |

### Association

* has_many :softwares
* has_many :comments

## softwares table

| Column             | Type                   | Options                 |
|--------------------|------------------------|-------------------------|
| title              | string                 | null: false             |
| explanation        | text                   | null: false             |
| hardware_id        | integer                | null: false             |
| user               | references             | foreign_key: true       |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| user        | references | foreign_key: true |
| product     | references | foreign_key: true |
| comment     | text       | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :software