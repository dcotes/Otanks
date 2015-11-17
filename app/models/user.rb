class User < ActiveRecord::Base

  has_secure_password
  has_one :location, as: :household
  # has_one :location, as: :household
  has_many :visits
  has_many :patients, through: :visits
  
end
