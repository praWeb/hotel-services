class Bed < ApplicationRecord
    
  def available_to_allocate
      bed_count - in_use
  end

end
