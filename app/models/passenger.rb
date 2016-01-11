class Passenger < ActiveRecord::Base
  has_one :user
  has_one :flight, through: :user
end
