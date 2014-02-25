class Restaurant < ActiveRecord::Base
  attr_accessible :address, :area_ids, :cuisine_ids, :description, :feature_ids, :phone, :price_id, :restaurant_image, :title, :website, :featured_restaurant, :remove_restaurant_image


  belongs_to :price
  has_and_belongs_to_many :areas
  has_and_belongs_to_many :features
  has_and_belongs_to_many :cuisines

  mount_uploader :restaurant_image, RestaurantImageUploader

  scope :featured, where(featured_restaurant: true)
end
