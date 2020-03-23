# sales DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: ture|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :customers
- has_many :contents

## customersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|company|string||
|position|string||
|detail|text||
|logo|text||
|businesscard|text||
|email|string||
|phone|integer||
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :contents

## contentsテーブル
|Column|Type|Options|
|------|----|-------|
|detail|text||
|user_id|references|null: false, foreign_key: true|
|customer_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :customer
