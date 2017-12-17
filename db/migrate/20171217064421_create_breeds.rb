class CreateBreeds < ActiveRecord::Migration[5.0]
  def change
    create_table :breeds do |t|
      t.string :personalities
      t.integer :gen
      t.integer :breeding_level_id
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
