class PatientLocation < ActiveRecord::Base
  geocoded_by :address   
  after_validation :geocode

  belongs_to :patient 
  has_many :tanks
end
