# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying database"

Character.destroy_all

puts "creating database"

paulo = Character.create!(name: "Paulo")
saad = Character.create!(name: "Saad")
sulav = Character.create!(name: "Sulav")
brian = Character.create!(name: "Brian")
language = Power.new(name: "language")

puts "connecting powers and chars"

language.character = paulo
language.save!

puts "finished"
