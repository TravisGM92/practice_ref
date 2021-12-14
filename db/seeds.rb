# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_names = %w[George Tim Luke Sarah Kimberly Tom Laura]
last_names = %w[Newman Tish Smith Herman]

first_names.each do |f|
  last_names.each do |l|
    ages = [10, 22, 97, 34, 31]
    age = ages.shuffle.first
    User.create!(name: f, last_name: l, age: age, email: 'no_email@email.com')
  end
end
