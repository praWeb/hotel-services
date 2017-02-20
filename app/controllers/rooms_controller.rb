class RoomsController < ApplicationController
    expose(:room) { find_or_initialize_room }
    expose(:room_service) { Rooms::RoomService.new({room: room}) }
    expose(:room_form) { room_service.initializeCreateForm(room) }
    expose(:edit_room_form) {room_service.initializeCreateForm(room) }
    expose(:rooms) { Room.all }
    
    def index
        
    end
    
    def new
        # puts room_service.inspect
        # @room = room_service.initializeCreateForm(room)
    end
    
    def create
        room_form.save
        render :index
    end
    
    def update
    end
    
    def delete 
    end
    
    private
    
    def find_or_initialize_room
        return Room.new unless params.key?(:id)
        Room.find(params[:id])
    end
end
