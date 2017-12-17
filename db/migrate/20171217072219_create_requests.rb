class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :type
      t.integer :by_id
      t.integer :for_id
      t.integer :status
      t.string :meta

      t.timestamps
    end
  end
end
