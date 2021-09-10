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




# # ******************************************************************************
# # Coworking 01 —————————————————————————————————————————————————————————————————

# mix_tassin = Coworking.create!(
#   name: "MIX TASSIN",
#   address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
#   opening_time: "08:00",
#   closing_time: "20:00",
#   contact_name: "Bénédicte Poncet"
# )

# # Photos ———————————————————————————————————————————————————————————————————————

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

# # Equipements ———————————————————————————————————————————————————————————————————

# coworking = Coworking.find_by(name: "MIX TASSIN")

# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

# puts "#{mix_tassin.name} a été créé"



# # ******************************************************************************
# # Coworking 02 —————————————————————————————————————————————————————————————————

# booster_house = Coworking.create!(
#   name: "Booster House",
#   address: "3, chemin du Jubin 69570 Dardilly",
#   opening_time: "09:00",
#   closing_time: "17:30",
#   contact_name: "Marion Mathevet"
# )

# # Photos ———————————————————————————————————————————————————————————————————————

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


# coworking = Coworking.find_by(name: "Booster House")

# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
# CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

# puts "#{booster_house.name} a été créé"



# ******************************************************************************
# Coworking 03 —————————————————————————————————————————————————————————————————

work_and_wall = Coworking.create!(
  name: "Work & Wall",
  address: "18 porte du Grand Lyon 01700 Neyron",
  opening_time: "08:30",
  closing_time: "18:00",
  contact_name: "Manon Perrod"
)

# Photos ———————————————————————————————————————————————————————————————————————

work_and_wall_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-01_buuecm.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-02_re0hmd.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-01_buuecm.jpg'
]
work_and_wall_photo_number = 0
work_and_wall_photos.each do |photo|
  file = URI.open(photo)
  work_and_wall.photos.attach(io: file, filename: "work-and-wall-0#{work_and_wall_photo_number += 1}.jpg")
end

work_and_wall_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-avatar_wqyr7q.png')
work_and_wall.avatar.attach(io: work_and_wall_avatar, filename: 'work-and-wall-avatar.jpg')


coworking = Coworking.find_by(name: "Work & Wall")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })

puts "#{work_and_wall.name} a été créé"




