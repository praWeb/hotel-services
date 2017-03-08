class CreateRoomAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :room_allocations do |t|

      t.timestamps
    end
  end
end
