class Room < ApplicationRecord
    has_many :room_beds
    has_many :customers
    has_many :chairs
    has_one :lamp
    has_one :table
    
end
