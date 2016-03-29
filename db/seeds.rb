# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

event = Event.create(name: 'Shabbat in Jerusalem')
meal1 = Meal.create(name: 'Evening', event: event)
meal2 = Meal.create(name: 'Lunch', event: event)
item1 = Item.create(name: 'Wine', meal: meal1)
item2 = Item.create(name: 'Cake', meal: meal1)
item3 = Item.create(name: 'Shnitzels', meal: meal1)
item4 = Item.create(name: 'Coke', meal: meal2)
item5 = Item.create(name: 'Juice', meal: meal2)
