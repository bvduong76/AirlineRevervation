class CreatePricelevels < ActiveRecord::Migration[5.0]
  def change
    create_table :pricelevels do |t|
      t.string :name
      t.float :price
    end
    add_foreign_key :flights, :pricelevels, column: :pricelevel, primary_key: "id"
  end
end
