module Rooms
    class RoomService 
        
        def initialize(params)
            puts params.inspect
            @room = params[:room]
        end
        
        def initializeCreateForm(room)
            Rooms::RoomCreateForm.new(room)
        end
        
    end
end