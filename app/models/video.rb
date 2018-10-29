class Video < ApplicationRecord
  has_many :character_videos
  has_many :characters, through: :character_videos
end
