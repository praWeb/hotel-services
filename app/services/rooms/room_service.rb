module Rooms
    class RoomService 
        
        def initialize(params)
            @room = params[:room]
        end
        
        def initializeCreateForm
            Rooms::RoomCreateForm.new(@room)
        end
        
        def initializeRoomAllocationForm
            Rooms::RoomAllocationForm.new(@room)
        end
        
        def save_room(form, params)
          puts "in save room"
          puts params.inspect
          if form.validate(params)
            form.save do |hash|
              puts hash["bed_ids"]
              hash["bed_ids"] = Array(hash["bed_ids"]).compact
              puts hash["bed_ids"]
              @room.update_attributes(hash)
            end
          else
            false
          end
        end
    end
end