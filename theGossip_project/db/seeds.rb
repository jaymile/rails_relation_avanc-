# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from Sqlite_sequence where name = 'cities'")
User.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
Gossip.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'gossips'")
Tag.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'tags'")
PrivateMessage.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'PrivateMessages'")

10.times do |i|
     City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
     User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Company.bs, email: Faker::Internet.email, age: rand(7..77))
end

20.times do |i|
    
    Gossip.create(title: Faker::HarryPotter.character, content:  Faker::HarryPotter.quote )
end

10.times do 
    Tag.create(title: Faker::Book.title)
    PrivateMessage.create(content: Faker::Company.bs)
end

