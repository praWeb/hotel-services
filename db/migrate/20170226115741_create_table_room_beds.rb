class CreateTableRoomBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :table_room_beds do |t|
      t.belongs_to :room, index: true, null: false, foreign_key: true
      t.belongs_to :bed, index: true, null: false, foreign_key: true
      t.timestamps null: false  
    end
  end
end
