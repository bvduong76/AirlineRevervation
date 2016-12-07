class CreateAirstrips < ActiveRecord::Migration[5.0]
  def change
    create_table :airstrips do |t|
      t.integer :start
      t.integer :end
    end
    add_index :airstrips, [:start, :end], unique: true
    add_foreign_key :airstrips, :airports, column: :start, primary_key: "id"
    add_foreign_key :airstrips, :airports, column: :end, primary_key: "id"
  end
end
