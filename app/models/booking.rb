class Booking < ActiveRecord::Base
  belongs_to :flight, foreign_key: :flight_id
  has_many :users
  has_many :passengers, through: :users
end
