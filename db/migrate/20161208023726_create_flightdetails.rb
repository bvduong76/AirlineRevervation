class CreateFlightdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :flightdetails do |t|
      t.integer :booking
      t.integer :flight
    end
    add_index :flightdetails, [:booking, :flight], unique: true
    add_foreign_key :flightdetails, :bookings, column: :booking, primary_key: "id"
    add_foreign_key :flightdetails, :flights, column: :flight, primary_key: "id"
  end
end
