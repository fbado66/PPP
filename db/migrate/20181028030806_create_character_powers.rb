class CreateCharacterPowers < ActiveRecord::Migration[5.2]
  def change
    create_table :character_powers do |t|
      t.references :character
      t.references :power
      t.timestamps
    end
  end
end
