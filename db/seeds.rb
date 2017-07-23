# This file should contain all the record creation needed to seed the database
# with its default values.  The data can then be loaded with the rails db:seed
# command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings'
#   }]) Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Admin User",
             email: "admin@test.org",
             password:              "foobar",
             password_confirmation: "foobar",
             type: 0)

User.create!(name:  "Basic User",
             email: "basic@test.org",
             password:              "foobar",
             password_confirmation: "foobar",
             type: 1)

40.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
