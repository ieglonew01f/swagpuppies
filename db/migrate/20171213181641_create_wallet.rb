class CreateWallet < ActiveRecord::Migration[5.0]
  def change
    create_table :wallets do |t|
      t.integer :balance
      t.integer :user_id
    end
  end
end
