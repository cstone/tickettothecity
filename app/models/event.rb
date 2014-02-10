class Event < ActiveRecord::Base
  attr_accessible :address, :area_id, :details, :event_image, :phone, :price, :title, :type_id, :venue, :website, :event_start, :event_end

  has_and_belongs_to_many :areas
end
