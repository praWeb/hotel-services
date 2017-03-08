class RoomBed < ActiveRecord::Base
    belongs_to :Room
    belongs_to :Bed
    
    def set_room_to_bed(room_id, bed_id)
        ActiveRecord::Base.connecton.execute('Insert %d, %d into room_beds', room_id, bed_id)
    end
    
    def deallocate_room_to_bed(room_id, bed_id)
        ActiveRecord::Base.connection.execute("Delete from room_beds where room_id= #{room_id}")
    end
end