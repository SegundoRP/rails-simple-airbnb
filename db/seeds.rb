# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
4.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.decimal_part,
    number_of_guests: Faker::Number.within(range: 1..10)
  )
  flat.save!
end
puts 'finished!'
