class ChangeOwnerTypeInPuppies < ActiveRecord::Migration[5.0]
  def change
  	change_column :puppies, :owner_id, :integer
  end
end
