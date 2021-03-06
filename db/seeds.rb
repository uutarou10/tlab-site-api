# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
   email: 'example@example.com',
   name: '田胡 健太郎',
   password: 'password',
   password_confirmation: 'password'
)

5.times do |i|
  Article.create(
    title: "テスト記事#{i+1}",
    body: "これは#{i+1}番目のテスト記事です。ほげほげ〜〜",
    user: user
  )
end

project = Project.create!(
  title: 'Cloud Service Center',
  description: '本学の全学生が利用するサービスを提供しているCloud Service Centerに関する研究・開発を行うプロジェクトです。',
  feed_url: 'https://example.com/feed.xml',
  url: 'https://example.com/',
  icon_url: 'https://example.com/icon.png'
)

ProjectArticle.create!(
  title: 'CSCでサービスつくりました',
  published_at: Time.gm(2018, 1, 27),
  project: project
)