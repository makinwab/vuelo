class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport", foreign_key: "from_airport_id"
  belongs_to :to_airport, class_name: "Airport", foreign_key: "to_airport_id"

  def self.get_trip(airport_id)
    where("from_airport_id = :airport OR to_airport_id = :airport", airport: airport_id)
  end
end
