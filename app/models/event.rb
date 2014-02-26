class Event < ActiveRecord::Base
  attr_accessible :address, :area_ids, :details, :event_image, :phone, :price, :title, :type_ids, :venue, :website, :event_start, :event_end, :remove_event_image

  has_and_belongs_to_many :areas
  has_and_belongs_to_many :types

  mount_uploader :event_image, EventImageUploader
end
