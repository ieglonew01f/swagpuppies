class AddOwnerToPuppies < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :owner_id, :string
  end
end
