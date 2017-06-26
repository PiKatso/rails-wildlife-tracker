class Animal < ActiveRecord::Base
  validates :name, :species, :presence => true
  has_many :sightings
end
