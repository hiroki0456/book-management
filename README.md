# DB設計

## users table

|column|type|option|
|---------------|----------------|---------------|
|book_log_id|string|null:false|
|email|string|null:false, index:true|
|encrypted_password|string|null:false|

## profiles table
|column|type|option|
|---------------|----------------|---------------|
|nickname|string|null:false|
|content|text|null:true|
|gender|integer|null:true|
|birthday|date|null:true|
|prefecture_id|integer|null:true|

## book_favorites table
|column|type|option|
|---------------|----------------|---------------|
|title|string|null:false|
|image|text|null:false|
|author|string|null:false|
release_date|date|null:false|

