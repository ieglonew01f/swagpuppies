class CreateBreedingLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :breeding_levels do |t|
      t.string :name
      t.integer :duration

      t.timestamps
    end
  end
end
