# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
NUM_ENTRIES = 100
NUM_ENTRIES.times do 
  name       = Faker::Name.name
  email      = Faker::Internet.email
  department = ["Sales", "Marketing", "Technical"].sample
  done       = [true, false].sample
  message    = Faker::Hacker.say_something_smart
  created_at = Time.now - (rand(30)).days
  Request.create({name: name,
                  email: email,
                  department: department,
                  done: done,
                  message: message,
                  created_at: created_at})
                  
end
