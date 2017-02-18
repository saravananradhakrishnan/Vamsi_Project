class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.boolean :is_favourite
      t.integer :user_id
      t.integer :product_count
      t.boolean :wishlist

      t.timestamps
    end
  end
end
