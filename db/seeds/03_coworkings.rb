require 'open-uri'

mix_tassin = Coworking.create!(
  name: "MIX TASSIN",
  address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
  equipements: "24h/24h, Parking gratuit, Espace repas, Internet Haut Débit, Firewall, Accès PMR",
  contact_first_name: "Bénédicte",
  contact_last_name: "Poncet"
)

mix_tassin_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-01_qbksd9.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-02_imuwji.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-03_yqvuxm.jpg'
]
mix_tassin_photo_number = 0
mix_tassin_photos.each do |photo|
  file = URI.open(photo)
  mix_tassin.photos.attach(io: file, filename: "mix-tassin-0#{mix_tassin_photo_number += 1}.jpg")
end
puts "#{mix_tassin.name} a été créé"


booster_house = Coworking.create!(
  name: "Booster House",
  address: "3, chemin du Jubin 69570 Dardilly",
  equipements: "9h00 à 18h00, Parking gratuit, Espace repas, Imprimante, Accès PMR",
  contact_first_name: "Marion",
  contact_last_name: "Mathevet"
)

booster_house_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-01_a09y0i.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-02_h71mug.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-03_azmkjs.jpg'
]
booster_house_photo_number = 0
booster_house_photos.each do |photo|
  file = URI.open(photo)
  booster_house.photos.attach(io: file, filename: "mix-tassin-0#{booster_house_photo_number += 1}.jpg")
end
puts "#{booster_house.name} a été créé"

