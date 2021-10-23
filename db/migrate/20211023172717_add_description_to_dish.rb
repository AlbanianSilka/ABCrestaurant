class AddDescriptionToDish < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :description, :text
  end
end
