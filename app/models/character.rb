class Character < ApplicationRecord
  validates :name, :gender, :equipment, :squad, presence: true 
  has_many :character_skills
  has_many :skills, through: :character_skills
  has_many :character_videos
  has_many :videos, through: :character_videos
  has_many :character_powers
  has_many :powers, through: :character_powers
end
