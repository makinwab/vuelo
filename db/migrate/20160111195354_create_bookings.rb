class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :user_id
      t.string :flight_type
      t.string :flight_class

      t.timestamps null: false
    end
  end
end
