class Attraction < ActiveRecord::Base
  attr_accessible :address, :area_ids, :attraction_image, :description, :phone, :title, :website, :attraction_types, :remove_attraction_image, :type_ids

  has_and_belongs_to_many :areas
  has_and_belongs_to_many :types

  mount_uploader :attraction_image, AttractionUploader
end
