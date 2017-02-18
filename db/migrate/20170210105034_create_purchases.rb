class CreatePurchases < ActiveRecord::Migration[5.0]
  def self.up
    create_table :purchases do |t|
      t.integer :product_id
      t.integer :user_id
      t.float :price
      t.string :pay_type
      t.integer :count
      t.boolean :return,:default => 0
      t.boolean :refunded,:default => 0

      t.timestamps
    end
  end
  def self.down
    drop_table :purchases 
  end
end
