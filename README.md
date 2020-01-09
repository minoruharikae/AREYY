# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# usersテーブル

|Column|Type|Options|
|------|----|-------|
|name      | string  | null: false |
|email     | string  | null: false |
|namekana  | string  | null: false |
|birthday  | integer | null: false |
|age       | integer | null: false |
|password  | string  | null: false |
|image     | string  | ----------- |

### Association
- has_many :piercings
- has_many :earrings
- has_many :rings
- has_many :bracelets
- has_many :necklaces




# piercingsテーブル

|Column|Type|Options|
|--------|---------|-------------|
|size    | string  | null: false |
|color   | string  | null: false |
|price   | integer | null: false |
|explain | text    | null: false |
|image   | string  | ----------- |


### Association
- belongs_to :user




# earringsテーブル

|Column|Type|Options|
|--------|---------|-------------|
|size    | string  | null: false |
|color   | string  | null: false |
|price   | integer | null: false |
|explain | text    | null: false |
|image   | string  | ----------- |


### Association
- belongs_to :user




# ringsテーブル

|Column|Type|Options|
|--------|---------|-------------|
|size    | string  | null: false |
|color   | string  | null: false |
|price   | integer | null: false |
|explain | text    | null: false |
|image   | string  | ----------- |


### Association
- belongs_to :user




# braceletsテーブル

|Column|Type|Options|
|--------|---------|-------------|
|size    | string  | null: false |
|color   | string  | null: false |
|price   | integer | null: false |
|explain | text    | null: false |
|image   | string  | ----------- |


### Association
- belongs_to :user





# necklacesテーブル

|Column|Type|Options|
|--------|---------|-------------|
|size    | string  | null: false |
|color   | string  | null: false |
|price   | integer | null: false |
|explain | text    | null: false |
|image   | string  | ----------- |


### Association
- belongs_to :user
