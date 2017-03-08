class BedsController < ApplicationController
    expose(:beds) { Bed.all }
    expose(:bed) { find_or_create_bed } 
    expose(:bed_params) { params[:bed_form] }
    expose(:bed_service) { Beds::BedService.new({bed: bed}) }
    expose(:bed_form) { bed_service.initializeCreateBed }
    
    def index
    end
    def edit 
    end
    def new 
    end
    def create 
      if bed_service.save_bed(bed_form, bed_params)
        render :index
      else 
        render :new
      end
    end
    def update 
      if bed_service.save_bed(bed_form, bed_params)
        render :index
      else 
        render :edit
      end
    end
    def delete 
    end
    
    def show
      render :index
    end
    
    private
    
    def find_or_create_bed
      return Bed.find(params[:id]) if params.key?(:id)
      Bed.new
    end
    
    def bed_params
      params.require(:bed_form).permit(:bed_type, :bed_count, :in_use, :room_id)
    end
end
