class Clothings < ApplicationRecord
    validates :cloth_type, presence: true
    validates :description, presence: true, lengthL { minimum: 1, maximum: 100 }
end