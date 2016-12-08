class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :way
      t.string :grade
      t.string :pricelevel
      t.integer :slot
      t.float :price
    end
    add_index :flights, [:way, :grade,  :pricelevel], unique: true
    add_foreign_key :flights, :airways, column: :way, primary_key: "id"
  end
end
