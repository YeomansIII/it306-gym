class Gymnasium < ActiveRecord::Base
    has_many :timeSlots
    validates :name, 
            presence: true
    validates :maxUsers, presence: true, length: { maximum: 20 }
end
