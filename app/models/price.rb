class Price < ActiveRecord::Base
  attr_accessible :value

  has_many :restaurants
end
