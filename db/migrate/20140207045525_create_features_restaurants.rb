class CreateFeaturesRestaurants < ActiveRecord::Migration
  def up
    create_table :features_restaurants, :id => false do |t|
      t.integer :feature_id
      t.integer :restaurant_id
    end

    add_index :features_restaurants, :feature_id
    add_index :features_restaurants, :restaurant_id

  end

  def down
    drop_table :features_restaurants
  end
end
