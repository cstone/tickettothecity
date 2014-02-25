class AddFeaturedRestaurantToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :featured_restaurant, :boolean
  end
end
