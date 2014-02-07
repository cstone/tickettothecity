class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :title
      t.text :description
      t.string :restaurant_image
      t.string :address
      t.string :phone
      t.string :website
      t.integer :area_id
      t.integer :cuisine_id
      t.integer :feature_id
      t.integer :price_id

      t.timestamps
    end
  end
end
