class AddMoreColumnsToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :bed_count, :integer
    add_column :rooms, :bed_ids, :integer, array: true, default: []
    add_column :rooms, :chair_count, :integer
    add_column :rooms, :chair_ids, :integer, array: true, default: []
    add_column :rooms, :table_count, :integer
    add_column :rooms, :table_ids, :integer, array: true, default: []
    add_column :rooms, :lamps_count, :integer
    add_column :rooms, :lamp_ids, :integer, array: true, default: []
    add_column :rooms, :room_type, :string
  end
end
