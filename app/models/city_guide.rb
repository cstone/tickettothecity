class CityGuide < ActiveRecord::Base
  attr_accessible :description, :name, :pdf, :remove_pdf

  mount_uploader :pdf, CityGuideUploader
end
