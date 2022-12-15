# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  Item.create(name: Faker::Book.title)
end

users_with_password = User.create_with(password: '123456', password_confirmation: '123456', email: 'test@gmail.com')


user_organiser = users_with_password.find_or_create_by!(name: 'Rob', is_organiser: true)
user_1 = users_with_password.find_or_create_by!(name: 'Stanley', is_organiser: false)
user_2 = users_with_password.find_or_create_by!(name: 'Phelim', is_organiser: false)

user_2.recipient = user_1
user_2.save

wishlist = Wishlist.new
wishlist.item_ids = Item.take(3).pluck(:id) # [1, 2, 3]
wishlist.user_id = user_1.id
wishlist.save
