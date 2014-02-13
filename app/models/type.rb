class Type < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :attractions
  has_and_belongs_to_many :events
end
