class Patient < ActiveRecord::Base
  has_many :visits
  has_many :users, through: :visits
  has_one :patient_location
end
