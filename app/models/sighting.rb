class Sighting < ActiveRecord::Base
  validates :date, :lat, :lng, :region, :presence => true
  belongs_to :animal
end
