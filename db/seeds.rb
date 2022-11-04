# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
User.create!(email: Faker::Internet.email, password: 'aassdd123', password_confirmation: 'aassdd123')
User.create!(email: 'admin@test.com', password: 'aassdd123', password_confirmation: 'aassdd123')
[
  'Lançamentos', 'Pijamas', 'Fitness', 'Praia', 'Íntima', 'Roupas', 'Outlet'
].map do |category_name|
  Category.create(title: category_name)
end