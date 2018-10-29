class Skill < ApplicationRecord
  validates :stat, presence: true 
  has_many :character_skills
  has_many :characters, through: :character_skills
end
