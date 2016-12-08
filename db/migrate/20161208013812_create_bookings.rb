class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :code, unique: true
      t.datetime :time
      t.float :price
      t.boolean :status
    end
  end
end
