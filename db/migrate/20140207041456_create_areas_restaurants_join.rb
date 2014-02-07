class CreateAreasRestaurantsJoin < ActiveRecord::Migration
  def up
    create_table :areas_restaurants, :id => false do |t|
      t.integer :area_id
      t.integer :restaurant_id
    end

    add_index :areas_restaurants, :area_id
    add_index :areas_restaurants, :restaurant_id

  end

  def down
    drop_table :areas_restaurants
  end
end
