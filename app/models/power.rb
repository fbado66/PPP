class Power < ApplicationRecord
  validates :magic, presence: true 
  has_many :character_powers
  has_many :characters, through: :character_powers
end
