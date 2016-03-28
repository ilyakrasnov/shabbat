class AddEventToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :event, index: true, foreign_key: true
  end
end
