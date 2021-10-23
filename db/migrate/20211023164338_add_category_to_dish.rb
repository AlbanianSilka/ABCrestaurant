class AddCategoryToDish < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :category, :text
  end
end
