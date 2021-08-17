# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# –––––––———————————————— à mettre dans 03_coworkings.rb

require 'open-uri'

Coworking.destroy_all

mix_tassin = Coworking.create!(
  name: "MIX TASSIN",
  address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
  equipements: "24h/24h, Parking gratuit, Espace repas, Internet Haut Débit, Firewall, Accès PMR",
  contact_first_name: "Bénédicte",
  contact_last_name: "Poncet"
)


### FONCTIONNE :
# [
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-01_qbksd9.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-02_imuwji.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-03_yqvuxm.jpg'
# ]

# file = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-01_qbksd9.jpg')
# mix_tassin.photos.attach(io: file, filename: 'mix-tassin-01.jpg')



photo_number = 0

mix_tassin_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-01_qbksd9.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-02_imuwji.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-03_yqvuxm.jpg'
]
mix_tassin_photos.each do |photo|
  file = URI.open(photo)
  mix_tassin.photos.attach(io: file, filename: "mix-tassin-#{photo_number += 1}.jpg")
end

puts "OUI" if mix_tassin.photos.attached?

booster_house = Coworking.create!(
  name: "Booster House",
  address: "3, chemin du Jubin 69570 Dardilly",
  equipements: "9h00 à 18h00, Parking gratuit, Espace repas, Imprimante, Accès PMR",
  contact_first_name: "Marion",
  contact_last_name: "Mathevet"
)

# –––––––————————————————



################# A dé-commenter !!!!!!!!!!!!

# puts "Nettoyage de la base de données......"
# User.destroy_all
# # Team.destroy_all
# Coworking.destroy_all

# Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
#   puts "Traitement du fichier : #{file.split('/').last}"
#   require file
# end

# puts "———————————————————"

# puts "Et c'est finit !"

