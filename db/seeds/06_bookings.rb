# Past Bokkings

def random_past_booking
  rand_number = rand(1...8)
  Booking.create!(
    user_id: User.find_by(email: "ma.bernard@company.com").id,
    coworking_id: Coworking.find_by(name: "Work & Wall").id,
    date: "2021-0#{rand_number}-03"
  )
end

7.times do
  random_past_booking
end

# Futur Bookings

Booking.create!(
  user_id: User.find_by(email: "ma.bernard@company.com").id,
  coworking_id: Coworking.find_by(name: "ChloroFEEL").id,
  date: "2021-09-23"
)

Booking.create!(
  user_id: User.find_by(email: "ma.bernard@company.com").id,
  coworking_id: Coworking.find_by(name: "Work & Wall").id,
  date: "2021-09-30"
)

puts "Les résas de Marie-Ange ont été créé"
