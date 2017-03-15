class Bed < ApplicationRecord

  def available_to_allocate
      bed_count - in_use
  end
  
  def room_ids
    room_beds.pluck(:room_id)
  end

end
