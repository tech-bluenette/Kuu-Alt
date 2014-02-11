# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Grant", last_name: "Winter", email: "grantrwinter@gmail.com", phone_number: 4039181824, password: "blahblahblah")
Message.create(subject: "I love you", recipient:"Laura Hartney", user_id: 1, recipient_email: "ljhartney@gmail.com", recipient_phone_number: 403554998, send_time: 01-01-01, text: "Hi, how are you?")
Message.create(subject: "I kinda like you", recipient:"Laura Hartney", user_id: 1, recipient_email: "ljhartney@hotmail.com", recipient_phone_number: 403554998, send_time: 01-01-01, text: "Hi, how are you?")