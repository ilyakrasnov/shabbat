class AddMealToItems < ActiveRecord::Migration
  def change
    add_reference :items, :meal, index: true, foreign_key: true
  end
end
