class Area < ActiveRecord::Base
  attr_accessible :active, :name

  has_and_belongs_to_many :restaurants
  has_and_belongs_to_many :attractions
  has_and_belongs_to_many :events

  validates_presence_of :name

  scope :active, where(active: true)
  scope :inactive, where(active: false)
end
