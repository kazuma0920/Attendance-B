# coding: utf-8

User.create!(name: "Sample User",
             email: "sample@email.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

60.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  card = "#{1000+n}"
  number = "#{1000+n}"
  User.create!(name: name,
               email: email,
               card: card,
               number: number,
               password: password,
               password_confirmation: password)
end