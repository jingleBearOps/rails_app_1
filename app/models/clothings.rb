class Clothings < ApplicationRecord
    validates_length_of :description, :minimum => 1
    validates_length_of :cloth_type, :minimum => 1
    validates :cloth_type, presence: true
    validates :description, presence: true
end