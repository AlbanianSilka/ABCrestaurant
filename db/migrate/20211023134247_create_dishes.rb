class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.integer :dish_price
      t.timestamps
    end
  end
end
