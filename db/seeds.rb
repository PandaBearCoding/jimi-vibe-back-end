# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all


user1 = User.create(username: "mrs161", password: "abc123", name: "Madeline Rose Stalter", profile_picture: "https://cdn.mainichi.jp/vol1/2020/08/31/20200831p2g00m0fe122000p/8.jpg?1", email: "madelinerose16@outlook.com", phone_number: "315-663-7462", address: "87 Clay Street, Apt 10, Brooklyn, NY 11222", cc_number: "1111", cc_date: "12/24", cc_cvv: "111")