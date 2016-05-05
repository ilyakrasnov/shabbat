class Meal < ActiveRecord::Base
  belongs_to :event
  has_many :items
  accepts_nested_attributes_for :items, allow_destroy: true
end
