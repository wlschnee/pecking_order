require 'rails_helper'

RSpec.describe User, type: :model do
  steven = double("user", :first_name => "Steven", :last_name => "Nuñez")
  # steven = User.create!(first_name: "Steven", last_name: "Nuñez", email: Faker::Internet.email, password: '1qaz2wsx')
  location = Location.create!(name: "Chipotle", address: "2 Broadway")
  future_event = Event.create!(name: "Beef eating", start_time: 1.week.from_now, location: location, host_id: User.first, duration: '🐢')
  past_event = Event.create!(name: "Salad eating", start_time: 1.week.ago, location: location, host_id: User.last, duration: '🐰')
  host = User.create!(first_name: "Host", last_name: "Name", email: Faker::Internet.email, password: "password")
  future_event.guests << steven
  past_event.guests << steven

  it "knows a user's upcoming events" do
    expect(steven.upcoming_events).to eq([future_event])
  end

  it "knows a user's past events" do
    expect(steven.past_events).to eq([past_event])
  end

  # also_steven = User.create!(first_name: "Steven", last_name: "Nuñez", email: "beef@beeflover.com", password: '1qaz2wsx')
  # another_location = Location.create!(name: "Chipotle", address: "2 Broadway")
  another_future_event = Event.create!(name: "More Beef Eating", start_time: 1.week.from_now, location: location, host_id: host.id, duration: '🐢')
  # social_eats = User.create!(first_name: "Social", last_name: "Eats", email: Faker::Internet.email, password: "password")

  it "reassigns event host to default on host deletion" do
    host.destroy
    expect(another_future_event.host).to eq(User.first)
  end
end
