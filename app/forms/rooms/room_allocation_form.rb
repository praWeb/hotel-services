module Rooms
  class RoomAllocationForm < Reform::Form
    
    property :bed_ids
    
    validates :bed_ids, presence: true
  end
end