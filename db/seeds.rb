# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Will", last_name: "S", email: "will@fi.com")
User.create(first_name: "Justin", last_name: "N", email: "justin@fi.com")
User.create(first_name: "Kristen", last_name: "D", email: "kristen@fi.com")
User.create(first_name: "Lamine", last_name: "N", email: "lamine@fi.com")

Location.create(name: "Chipotle", Address: "2 Broadway")
Location.create(name: "Open Market", Address: "33 William St")

Event.create()
