class Banner < ActiveRecord::Base
  attr_accessible :banner_image

  mount_uploader :banner_image, BannerImageUploader
end
