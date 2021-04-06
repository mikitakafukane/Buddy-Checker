# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email:    "admin@test.com",
  password: "admintest"
  )
  
4.times do |n|
  Student.create!(
    name:           "テスト生徒#{n + 1}",
    email:          "student#{n + 1}@test.com",
    password:       "studenttest",
    image:          File.open("./app/assets/images/no_image.jpg"),
    academic_month: "20210#{n + 1}",
    is_deleted:     "false"
  )
end

4.times do |n|
  Category.create!(
    name: "#{n + 1}ヶ月目"
  )
end

4.times do |n|
  Curriculum.create!(
    category_id: n + 1,
    name: "問題#{n + 1}"
  )
end

4.times do |n|
  Group.create!(
    name: "テストグループ#{n + 1}"
  )
end