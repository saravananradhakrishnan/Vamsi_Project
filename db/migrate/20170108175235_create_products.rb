class CreateProducts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.string :spec
      t.string :damage_desc
      t.string :amount
      t.string :in_stock
      t.integer :category_id
      t.integer :sub_categ_id
      t.string :damaged
      t.string :approved
      t.integer :user_id

      t.timestamps
    end
  end
  def self.down
    drop_table :products 
  end
end
