class Link < ActiveRecord::Base
  has_one :location
  has_many :enemies
  has_many :items
end
