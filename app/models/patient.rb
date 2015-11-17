class Patient < ActiveRecord::Base
  # has_one :location 
  has_one :location, as: :household 
  has_many :visits
  has_many :users, through: :visits
end
