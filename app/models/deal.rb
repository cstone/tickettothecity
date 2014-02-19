class Deal < ActiveRecord::Base
  attr_accessible :area_ids, :deal_image, :details, :title

  has_and_belongs_to_many :areas

  mount_uploader :deal_image, DealImageUploader
end