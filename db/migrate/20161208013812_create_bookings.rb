class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :code
      t.datetime :time
      t.float :price
      t.boolean :status

      t.timestamps
    end
  end
end
