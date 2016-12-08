class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.integer :booking
    end
    add_foreign_key :passengers, :bookings, column: :booking, primary_key: "id"
  end
end
