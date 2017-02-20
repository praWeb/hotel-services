class AddColumnsToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :number, :integer
    add_column :rooms, :occupied, :boolean
  end
end
