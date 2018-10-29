class CreateCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skills do |t|
      t.references :character
      t.references :skill
      t.timestamps
    end
  end
end
