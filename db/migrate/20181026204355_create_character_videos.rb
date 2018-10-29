class CreateCharacterVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :character_videos do |t|
      t.references :character
      t.references :video
      t.timestamps
    end
  end
end
