class Character < ActiveRecord::Base
has_many :items
has_many :skills
end
