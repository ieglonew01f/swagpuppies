class CreatePuppies < ActiveRecord::Migration[5.0]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :unique_hash
      t.integer :score
      t.integer :charisma
      t.string :children
      t.string :parents
      t.integer :xp
      t.integer :breed_id

      t.timestamps
    end
  end
end
