class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender 
      t.string :rank
      t.string :equipment
      t.string :squad
      t.string :image_url
      t.timestamps
    end
  end
end


