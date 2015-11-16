class User < ActiveRecord::Base

  has_secure_password
  has_one :location
  has_many :visits
  has_many :patients, through: :visits
  
end
