require 'open-uri'

# Liste des équipements(ids) :

access = Equipement.find_by(name: "Accès PMR")
secu_doc = Equipement.find_by(name: "Doc. unique de secu")
lunch = Equipement.find_by(name: "Espace repas")
seat = Equipement.find_by(name: "Fauteuils ergonomiques")
firewall = Equipement.find_by(name: "Firewall")
printer = Equipement.find_by(name: "Imprimante")
wifi = Equipement.find_by(name: "Internet Haut Débit")
parking = Equipement.find_by(name: "Parking Gratuit")

equipement_ids = []


# ******************************************************************************
# Coworking ————————————————————————————————————————————————————————————————————

mix_tassin = Coworking.create!(
  name: "MIX TASSIN 03",
  address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
  # equipements: "24h/24h, Parking gratuit, Espace repas, Internet Haut Débit, Firewall, Accès PMR",
  opening_time: "00:00",
  closing_time: "10:00",
  contact_name: "Bénédicte Poncet "
)

# Photos ———————————————————————————————————————————————————————————————————————

# mix_tassin_photos = [
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-01_qbksd9.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-02_imuwji.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/mix-tassin-03_yqvuxm.jpg'
# ]
# mix_tassin_photo_number = 0
# mix_tassin_photos.each do |photo|
#   file = URI.open(photo)
#   mix_tassin.photos.attach(io: file, filename: "mix-tassin-0#{mix_tassin_photo_number += 1}.jpg")
# end

# mix_tassin_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1629819999/Extramuros/Coworkings/mix-tassin-avatar_lymsu2.jpg')
# mix_tassin.avatar.attach(io: mix_tassin_avatar, filename: 'mix-tassin-avatar.jpg')

# Equipements ———————————————————————————————————————————————————————————————————

coworking = Coworking.find_by(name: "MIX TASSIN 03")
p coworking.name


# seat_equipement = CoworkingEquipement.create!(
#   {
#     coworking_id: coworking.id,
#     equipement_id: seat.id,
#   }
# )

equipement_ids.each do |equipement_id|
  coworking_equipement =
    CoworkingEquipement.new(
      equipement_id: equipement_id,
      coworking: @coworking
    )
  coworking_equipement.save
end

p seat_equipement
p coworking.equipements

puts "#{mix_tassin.name} a été créé"

# ——————————————————————————————————————————————————————————————————————————————

# booster_house = Coworking.create!(
#   name: "Booster House",
#   address: "3, chemin du Jubin 69570 Dardilly",
#   equipements: "9h00 à 18h00, Parking gratuit, Espace repas, Imprimante, Accès PMR",
#   contact_first_name: "Marion",
#   contact_last_name: "Mathevet"
# )

# booster_house_photos = [
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-01_a09y0i.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-02_h71mug.jpg',
#   'https://res.cloudinary.com/mapiemap/image/upload/v1629215919/Extramuros/Coworkings/booster-house-03_azmkjs.jpg'
# ]
# booster_house_photo_number = 0
# booster_house_photos.each do |photo|
#   file = URI.open(photo)
#   booster_house.photos.attach(io: file, filename: "mix-tassin-0#{booster_house_photo_number += 1}.jpg")
# end

# booster_house_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1629819998/Extramuros/Coworkings/booster-house-avatar_xphwe2.jpg')
# booster_house.avatar.attach(io: booster_house_avatar, filename: 'booster-house-avatar.jpg')

# puts "#{booster_house.name} a été créé"
