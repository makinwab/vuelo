class Airport < ActiveRecord::Base
  def flights
    Flight.get_trip self.id
  end
end
