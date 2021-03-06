class RoomsController < ApplicationController
    expose(:room) { find_or_initialize_room }
    expose(:room_params) { params[:room_form] }
    expose(:room_allocation_params) { params[:room_allocation_form] }
    expose(:room_service) { Rooms::RoomService.new({room: room}) }
    expose(:room_form) { room_service.initializeCreateForm }
    expose(:room_allocation_form) {room_service.initializeRoomAllocationForm }
    expose(:rooms) { Room.all }
    
    def index
        
    end
    
    def new
        # puts room_service.inspect
        # @room = room_service.initializeCreateForm(room)
    end
    
    def create
      if room_service.save_room(room_form, room_params)
        render :index
      else
        render :edit
      end
    end
    
    def update
      if room_service.save_room(room_form, room_params)
        render :index
      else
        render :edit
      end
    end
    
    def delete 
    end
    
    def manage_room
      if params[:room_allocation_form]
        puts room_allocation_params
        if room_service.save_room(room_allocation_form, room_allocation_params)
          redirect_to(action: :index)
        else
          render :manage
        end
      end
    end
    
   
    
    private
    
    def find_or_initialize_room
        return Room.new unless params.key?(:id)
        Room.find(params[:id])
    end
    
    def room_allocation_params
      params.require(:room_allocation_form).permit(:bed_ids => [])
    end

    def room_params
      params.require(:room_form).permit(:occupied, :number, :room_type)
    end
end
