module Rooms
    class RoomCreateForm < Reform::Form
        #properties
        property :number
        property :occupied
        property :bed_ids
        property :bed_count
        property :table_count
        property :table_ids
        property :lamps_count
        property :lamp_ids
        property :room_type
        property :chair_ids
        property :chair_count
        
        # anything can be empty


    end
end