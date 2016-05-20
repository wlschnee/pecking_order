# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Will", last_name: "S", email: "will@fi.com", password: "password")
User.create(first_name: "Justin", last_name: "N", email: "justin@fi.com", password: "password")
User.create(first_name: "Kristin", last_name: "D", email: "kristin@fi.com", password: "password")
User.create(first_name: "Lamine", last_name: "N", email: "lamine@fi.com", password: "password")

other_users = [["Alex", "S", "alemosie@fi.com"], ["Gabriel", "S", "gabe@fi.com"], ["Michael", "A-A", "michael-aa@fi.com"], ["Einar", "S", "einar@fi.com"], ["Chris", "M", "xm@fi.com"], ["Liana", "G", "liana@fi.com"]]

other_users.each do |first, last, email|
  User.create(first_name: first, last_name: last, email: email, password: "password")
end

chipotle = Location.create(name: "Chipotle", address: "2 Broadway")
openkitchen =  Location.create(name: "Open Kitchen", address: "33 William St")
varietycafe = Location.create(name: "Variety Cafe", address: "25 Broadway")

event1 = Event.create(name: "Burrito face", location_id: 1, start_time: Time.parse("12:15"), meeting_place: "In the hall by the elevator", duration: "rabbit emoji")
event2 = Event.create(name: "Cooked sushi", location_id: 2, start_time: Time.parse("12:00"), meeting_place: "Downstairs lobby", duration: "snail emoji")
event3 = Event.create(name: "Taco Tuesday", location_id: 1, start_time: Time.parse("12:30"), meeting_place: "At Chipotle", duration: "rabbit emoji")
event4 = Event.create(name: "Cold nachos", location_id: 3, start_time: Time.parse("12:10"), meeting_place: "In the park!", duration: "snail emoji")

User.first.events << event1
User.second.events << event2
User.third.events << event3
User.fourth.events << event4

Registration.create(event_id: 1, guest_id: 7)
Registration.create(event_id: 2, guest_id: 10)
Registration.create(event_id: 3, guest_id: 8)
Registration.create(event_id: 4, guest_id: 9)
Registration.create(event_id: 4, guest_id: 6)
Registration.create(event_id: 2, guest_id: 5)

Comment.create(user_id: 1, event_id: 1, content: "Hope to see you guys there!")
Comment.create(user_id: 2, event_id: 2, content: "We're gonna sit and eat there.")
Comment.create(user_id: 7, event_id: 1, content: "I'm running late, can you wait 5?!")

Tip.create(user_id: 1, location_id: 1, content: "Order steak AND chicken and you'll have enough food for the whole day")
Tip.create(user_id: 6, location_id: 2, content: "I highly recommend the stir-fry")
Tip.create(user_id: 5, location_id: 3, content: "The daily specials are solid")
Tip.create(user_id: 3, location_id: 1, content: "I'm all about the barbacoa")
Tip.create(user_id: 4, location_id: 2, content: "Great chicken salad")
