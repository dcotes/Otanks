class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  belongs_to :household, polymorphic: true
  # belongs_to :user
  # belongs_to :patient
  has_many :tanks
end
