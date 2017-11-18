# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Gymnasium.create(name: "RAC", currentUsers: 0, maxUsers: 20)
Gymnasium.create(name: "Skyline", currentUsers: 7, maxUsers: 20)
Gymnasium.create(name: "The Edge", currentUsers: 13, maxUsers: 20)
Gymnasium.create(name: "RAC Fields", currentUsers: 19, maxUsers: 20)