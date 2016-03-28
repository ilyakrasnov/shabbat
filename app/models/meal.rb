class Meal < ActiveRecord::Base
  belongs_to :event
  has_many :items
end
