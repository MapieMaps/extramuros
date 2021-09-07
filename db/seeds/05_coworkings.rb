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




# ******************************************************************************
# Coworking ————————————————————————————————————————————————————————————————————

mix_tassin = Coworking.create!(
  name: "MIX TASSIN test",
  address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
  opening_time: "00:00",
  closing_time: "00:00",
  contact_name: "Bénédicte Poncet "
)

# Photos ———————————————————————————————————————————————————————————————————————

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

mix_tassin_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1629819999/Extramuros/Coworkings/mix-tassin-avatar_lymsu2.jpg')
mix_tassin.avatar.attach(io: mix_tassin_avatar, filename: 'mix-tassin-avatar.jpg')

# Equipements ———————————————————————————————————————————————————————————————————

coworking = Coworking.find_by(name: "MIX TASSIN test")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{mix_tassin.name} a été créé"

# ******************************************************************************
# Coworking ——————————————————————————————————————————————————————————————————

booster_house = Coworking.create!(
  name: "Booster House test",
  address: "3, chemin du Jubin 69570 Dardilly",
  opening_time: "09:00",
  closing_time: "17:30",
  contact_name: "Marion Mathevet "
)

# Photos ———————————————————————————————————————————————————————————————————————

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

booster_house_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1629819998/Extramuros/Coworkings/booster-house-avatar_xphwe2.jpg')
booster_house.avatar.attach(io: booster_house_avatar, filename: 'booster-house-avatar.jpg')


coworking = Coworking.find_by(name: "Booster House test")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{booster_house.name} a été créé"
