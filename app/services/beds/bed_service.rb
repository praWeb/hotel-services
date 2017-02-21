module Beds
  class BedService
    def initialize(params)
      @bed = params[:bed]
    end
    
    def initializeCreateBed
      Beds::BedForm.new(@bed)
    end
    
    def save_bed(form, params)
      if form.validate(params)
        form.save do |hash|
          @bed.update_attributes(hash)
        end
      else
        false
      end
    end
  end
end