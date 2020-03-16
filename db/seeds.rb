# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
puts "users deleted"
User.create(email: "admin@test.com", password: "123456", role: "admin")

User.create(email: "richard@doctor.com", password: "123456", role: "doctor")
User.create(email: "lucas@test.com", password: "123456", role: "doctor")
User.create(email: "bodie@test.com", password: "123456", role: "doctor")
User.create(email: "dodge@test.com", password: "123456", role: "doctor")


User.create(email: "mike@patient.com", password: "123456", role: "patient")
User.create(email: "steve@patient.com", password: "123456", role: "patient")
User.create(email: "scott@patient.com", password: "123456", role: "patient")
User.create(email: "allison@patient.com", password: "123456", role: "patient")
User.create(email: "monika@patient.com", password: "123456", role: "patient")
User.create(email: "jennifer@patient.com", password: "123456", role: "patient")
User.create(email: "joddy@patient.com", password: "123456", role: "patient")
User.create(email: "theo@patient.com", password: "123456", role: "patient")
puts "#{User.count} users created"
