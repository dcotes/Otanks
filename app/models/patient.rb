class Patient < ActiveRecord::Base
  has_one :location 
  has_many :visits
  has_many :users, through: :visits
end
