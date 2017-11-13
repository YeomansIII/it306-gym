class Gymnasium < ActiveRecord::Base
    has_many :timeSlots
    validates :name, presence: true
    validates :currentUsers, presence: true, length: {maximum: 20}
    validates :maxUsers, presence: true
end
