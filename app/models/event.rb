class Event < ActiveRecord::Base
  has_many :meals
  accepts_nested_attributes_for :meals, allow_destroy: true
end
