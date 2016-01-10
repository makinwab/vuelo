require "csv"

Airport.destroy_all
Flight.destroy_all

airport_csv = "db/airports.csv"
CSV.foreach(airport_csv, headers: true) do |row|
  Airport.create! row.to_hash
end

airlines = ["Arik Air", "Dana Air", "Aero Contractors", "Air Peace",
"Allied Air", "Associated Aviation", "Azman Air", "Dornier Aviation Nigeria",
"Kabo Air", "Max Air", "Med-View Airline", "Overland Airway"]


puts "Seeding completed"