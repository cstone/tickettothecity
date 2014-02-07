class Cuisine < ActiveRecord::Base
  attr_accessible :active, :name

  has_many :restaurants

  validates_presence_of :name

  scope :active, where(active: true)
  scope :inactive, where(active: false)
end
