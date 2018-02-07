# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "******************"
puts "*** Delete all ***"
puts "******************"

print "Delete days off"
DaysOff.destroy_all
puts " [x]"

print "Delete Appointments"
Appointment.destroy_all
puts " [x]"

print "Delete Appointment type"
AppointmentType.destroy_all
puts " [x]"

print "Delete reviews"
Review.destroy_all
puts " [x]"

print "Delete users"
User.destroy_all
puts " [x]"

puts "@@@@@@@@@@@@@@@@@@"
puts "@@@ Create all @@@"
puts "@@@@@@@@@@@@@@@@@@"

print "Create days off"
DaysOff.create(day_of_week: 6)
DaysOff.create(day_of_week: 7)
DaysOff.create(start_date: "01/02/2018", end_date: "15/02/2018")
puts " [x]"


print "Create Appointment type"
AppointmentType.create(name: 'Première consultation', duration: '1:00', price: 55)
AppointmentType.create(name: 'Consultation de suivi', duration: '0:45', price: 55)
AppointmentType.create(name: 'Consultation pédiatrique', duration: '1:00', price: 55)
puts " [x]"


print "Create users"
User.create(email: "mdesrosiers@orange.fr", password: "123soleil")
User.create(email: "md@md.fr", password: "123soleil")
puts " [x]"

print "Create reviews"
Review.create(content: "Top moumoute", rating: 5, user_id: User.first.id)
Review.create(content: "Génial", rating: 4.5, user_id: User.last.id)
puts " [x]"


print "Create appointments"
Appointment.create( user: User.first,
                    appointment_type: AppointmentType.first,
                    start_date: '2018-03-20 10:30:00 +0100',
                    end_date: '2018-03-20 11:30:00 +0100')
Schedule.create(appointment: Appointment.last)
Appointment.create( user: User.first,
                    appointment_type: AppointmentType.first,
                    start_date: '2018-03-15 15:30:00 +0100',
                    end_date: '2018-03-15 16:30:00 +0100')
Schedule.create(appointment: Appointment.last)
puts " [x]"

print "End of the seed processing"



