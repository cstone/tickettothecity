class CreateCuisinesRestaurants < ActiveRecord::Migration
  def up
    create_table :cuisines_restaurants, :id => false do |t|
      t.integer :cuisine_id
      t.integer :restaurant_id
    end

    add_index :cuisines_restaurants, :cuisine_id
    add_index :cuisines_restaurants, :restaurant_id

  end

  def down
    drop_table :cuisines_restaurants
  end
end
