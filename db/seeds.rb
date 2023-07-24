# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

i = 0
until User.count == 20 do
    User.create(email: "test#{i}@gmail", password: "asdasdasd", 
        "password_confirmation": "asdasdasd", name:Faker::Name.name)
    i += 1
end