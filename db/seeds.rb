# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  login_name: 'uutarou',
  password: 'encrypted_password',
  name: 'ううたろ'
)

Article.create(
  title: 'テスト記事',
  body: 'これはテスト記事です。ほげほげ〜〜',
  user: user
)