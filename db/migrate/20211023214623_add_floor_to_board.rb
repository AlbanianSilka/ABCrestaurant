class AddFloorToBoard < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :floor, :integer
  end
end
