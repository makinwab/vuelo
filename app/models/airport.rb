class Airport < ActiveRecord::Base
  has_many :flights
  
  def flights
    Flight.get_trip self.id
  end
end
