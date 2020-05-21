class Venue < ApplicationRecord
  has_one :information
  geocoded_by :address
  after_validation :geocode
end
