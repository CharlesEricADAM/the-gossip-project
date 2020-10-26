# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
Message.destroy_all
Joinrecipient.destroy_all
require 'faker'


10.times do 
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do 
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(from: 16, to: 90),city: City.find(rand(City.first.id..City.last.id)))
end

20.times do
    Gossip.create!(title: Faker::Lorem.word, content: Faker::Lorem.paragraphs(number: 2), user: User.find(rand(User.first.id..User.last.id)))
end

10.times do
    Tag.create!(title: Faker::Lorem.word)
end

50.times do
    Joingossiptag.create!(gossip: Gossip.find(rand(Gossip.first.id..Gossip.last.id)) ,tag: Tag.find(rand(Tag.first.id..Tag.last.id)))
end


20.times do
   m= Message.create!(content: Faker::Lorem.paragraph, sender: User.find(rand(User.first.id..User.last.id)))
   Joinrecipient.create!(message: m ,recipient: User.find(rand(User.first.id..User.last.id)))
   Joinrecipient.create!(message: m ,recipient: User.find(rand(User.first.id..User.last.id)))

end