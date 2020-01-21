# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Charlie", age: 20, bio: "I like turtles", food_choice: 1, love_choice: true, password: 'user')
User.create(name: "Sam", age: 21, bio: "I do not like turtles", food_choice: 2, love_choice: false, password: 'user')
User.create(name: "Frannie", age: 22, bio: "I like cats", food_choice: 3, love_choice: true, password: 'user')
User.create(name: "Jackson", age: 23, bio: "I like dogs", food_choice: 4, love_choice: false, password: 'user')
User.create(name: "Bronte", age: 21, bio: "I like horses", food_choice: 5, love_choice: true, password: 'user')
User.create(name: "David", age: 39, bio: "I like gingers", food_choice: 6, love_choice: false, password: 'user')
User.create(name: "Brooke", age: 25, bio: "I like scooters", food_choice: 7, love_choice: true, password: 'user')
User.create(name: "Girija", age: 27, bio: "I like indian food", food_choice: 8, love_choice: false, password: 'user')
User.create(name: "Jason", age: 35, bio: "I like indian cats more than Frannie", food_choice: 1, love_choice: false, password: 'user')
User.create(name: "Donny", age: 60, bio: "I like enjoy classical music", food_choice: 3, love_choice: false, password: 'user')
User.create(name: "Aaron", age: 32, bio: "I like korean food", food_choice: 5, love_choice: true, password: 'user')