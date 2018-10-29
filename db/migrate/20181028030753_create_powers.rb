class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :magic
      t.timestamps
    end
  end
end
