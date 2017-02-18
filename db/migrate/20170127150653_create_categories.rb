class CreateCategories < ActiveRecord::Migration[5.0]
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :sub_categ_id
      t.string :sub_categ_name
      t.string :brand

      t.timestamps
    end
  end
  def self.down
    drop_table :categories 
  end
end
