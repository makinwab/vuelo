require "csv"
require "faker"

Airport.destroy_all
Flight.destroy_all

airport_csv = "db/airports.csv"
CSV.foreach(airport_csv, headers: true) do |row|
  Airport.create! row.to_hash
end

airlines = ["Arik Air", "Dana Air", "Aero Contractors", "Air Peace",
"Allied Air", "Associated Aviation", "Azman Air", "Dornier Aviation Nigeria",
"Kabo Air", "Max Air", "Med-View Airline", "Overland Airway"]

50.times do |i|
  from_airport_id = Airport.ids.sample
  f = Flight.new
  f.from_airport_id = from_airport_id
  f.to_airport_id = Airport.where.not(id: from_airport_id).ids.sample
  f.departure_date = Faker::Time.forward(23, :morning)
  f.arrival_date = f.departure_date + 45.minutes
  f.airline = airlines.sample
  f.price = Faker::Commerce.price

  f.save!
end

puts "Seeding completed"