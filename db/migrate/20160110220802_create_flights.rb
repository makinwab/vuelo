class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.integer :to_airport_id
      t.datetime :departure_date
      t.datetime :arrival_date
      t.string :airline
      t.decimal :price

      t.timestamps null: false
    end
  end
end
