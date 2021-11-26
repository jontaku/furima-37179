# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kane    | string | null: false |
| birth_date         | date   | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| item_name       | string     | null: false                    |
| explanation     | text       | null: false                    |
| category        | integer    | null: false                    |
| condition       | integer    | null: false                    |
| shipping_charge | integer    | null: false                    |
| shipping_area   | integer    | null: false                    |
| shipping_days   | integer    | null: false                    |
| price           | integer    | null: false                    |

### Association

- has_one :orders
- belongs_to :users

## orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- has_one :items
- belongs_to :users
- has_one : addresses

## addresses テーブル

| Column  | Type       | Options                              |
| ------- | ---------- | ------------------------------------ |
| item          | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |
| postcode      | integer    | null: false                    |
| prefecture_id | string     | null: false                    |
| city          | string     | null: false                    |
| block         | string     | null: false                    |
| building      | string     |                                |
| phone_number  |integer     | null: false                    |

### Association

- belongs_to :orders