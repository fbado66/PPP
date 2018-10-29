class CharacterVideo < ApplicationRecord
  belongs_to :character
  belongs_to :video
end
