class TopWare < ApplicationRecord
    validates_length_of :style, :minimum => 1
    validates_length_of :description, :minimum => 1 
    validates_length_of :price, :minimum => 1
    validates_length_of :origin, :minimum => 1
    validates :style, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :origin, presence: true


end
