module Beds
  class BedForm < Reform::Form
    property :bed_type
    property :bed_count
    property :in_use
    
    validates :bed_count, presence: true
    validates :bed_type, presence: true
    validate :validate_in_use?
    
    def validate_in_use?
      errors.add(:in_use, "Cannot add more than available") unless in_use.to_i <= bed_count.to_i
    end
  end
end