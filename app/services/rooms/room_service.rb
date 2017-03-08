module Rooms
    class RoomService 
        
        def initialize(params)
            @room = params[:room]
        end
        
        def initializeCreateForm(room)
            Rooms::RoomCreateForm.new(room)
        end
        
        def initializeRoomAllocationForm(room)
            Rooms::RoomAllocationForm.new(room)
        end
        
        def save_room(form, params)
          if form.validate(params)
            form.save do |hash|
              hash["bed_ids"] = Array(hash["bed_ids"])
              @room.update_attributes(hash)
            end
          else
            false
          end
        end
    end
end