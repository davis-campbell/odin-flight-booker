# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.create!(name: 'LGA')
Airport.create!(name: 'JFK')
Airport.create!(name: 'PDX')
Airport.create!(name: 'LAX')
Airport.create!(name: 'ATL')
Airport.create!(name: 'SFO')

5.times do |x|
  Flight.create!(to_airport_id: 1 + rand(5),
                 from_airport_id: 6,
                 departure: Time.now + x.hours)
end

5.times do |x|
  Flight.create!(to_airport_id: 1 + rand(4),
                 from_airport_id: 5,
                 departure: Time.now + x.hours)
end

5.times do |x|
  Flight.create!(to_airport_id: 1 + rand(3),
                 from_airport_id: 4,
                 departure: Time.now + x.hours)
end

5.times do |x|
  Flight.create!(to_airport_id: 1 + rand(2),
                 from_airport_id: 3,
                 departure: Time.now + x.hours)
end
