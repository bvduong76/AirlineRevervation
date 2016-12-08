class CreateAirways < ActiveRecord::Migration[5.0]
  def change
    create_table :airways do |t|
      t.string :code
      t.integer :start
      t.integer :end
      t.date :day
      t.time :time
    end
    add_index :airways, [:start, :end, :day, :time], unique: true
    add_foreign_key :airways, :airports, column: :start, primary_key: "id"
    add_foreign_key :airways, :airports, column: :end, primary_key: "id"
  end
end
