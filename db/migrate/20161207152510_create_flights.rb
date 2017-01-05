class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :way
      t.string :grade
      t.integer :pricelevel
      t.integer :slot
    end
    add_index :flights, [:way,:pricelevel], unique: true
    add_foreign_key :flights, :airways, column: :way, primary_key: "id"
  end
end
