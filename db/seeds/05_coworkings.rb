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
# Coworking 01 —————————————————————————————————————————————————————————————————

mix_tassin = Coworking.create!(
  name: "MIX TASSIN",
  address: "4-6 Avenue Joannes Hubert 69160 Tassin-la-Demi-Lune",
  opening_time: "08:00",
  closing_time: "20:00",
  contact_name: "Bénédicte Poncet"
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

coworking = Coworking.find_by(name: "MIX TASSIN")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{mix_tassin.name} a été créé"



# ******************************************************************************
# Coworking 02 —————————————————————————————————————————————————————————————————

booster_house = Coworking.create!(
  name: "Booster House",
  address: "3, chemin du Jubin 69570 Dardilly",
  opening_time: "09:00",
  closing_time: "17:30",
  contact_name: "Marion Mathevet"
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


coworking = Coworking.find_by(name: "Booster House")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{booster_house.name} a été créé"



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
work_and_wall.avatar.attach(io: work_and_wall_avatar, filename: 'work-and-wall-avatar.png')


coworking = Coworking.find_by(name: "Work & Wall")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })

puts "#{work_and_wall.name} a été créé"


# ******************************************************************************
# Coworking 04 —————————————————————————————————————————————————————————————————

walter_technolac = Coworking.create!(
  name: "Walter Technolac",
  address: "12 rue du Lac de Garde 73370 Le Bourget du Lac",
  opening_time: "08:00",
  closing_time: "18:30",
  contact_name: "Yanis Mouhcine"
)

# Photos ———————————————————————————————————————————————————————————————————————

walter_technolac_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/walter-technolac-03_i1wufw.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/walter-technolac-02_vqy1c4.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/walter-technolac-03_i1wufw.jpg'
]
walter_technolac_photo_number = 0
walter_technolac_photos.each do |photo|
  file = URI.open(photo)
  walter_technolac.photos.attach(io: file, filename: "walter-technolac-0#{walter_technolac_photo_number += 1}.jpg")
end

walter_technolac_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/walter-technolac-avatar_ifk5jn.jpg')
walter_technolac.avatar.attach(io: walter_technolac_avatar, filename: 'walter-technolac-avatar.jpg')


coworking = Coworking.find_by(name: "Walter Technolac")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: secu_doc.id })

puts "#{walter_technolac.name} a été créé"


# ******************************************************************************
# Coworking 05 —————————————————————————————————————————————————————————————————

luz_in = Coworking.create!(
  name: "LUZ'IN",
  address: "PA de Rhodes - 3 rue des Mûriers 38110 La Tour du Pin",
  opening_time: "08:30",
  closing_time: "18:00",
  contact_name: "Julia Sorlin"
)

# Photos ———————————————————————————————————————————————————————————————————————

luz_in_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/luz-in-01_fwh0i3.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/luz-in-02_li9g0l.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/luz-in-03_qb4udd.jpg'
]
luz_in_photo_number = 0
luz_in_photos.each do |photo|
  file = URI.open(photo)
  luz_in.photos.attach(io: file, filename: "luz-in-0#{luz_in_photo_number += 1}.jpg")
end

luz_in_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/luz-in-avatar_p4eivm.jpg')
luz_in.avatar.attach(io: luz_in_avatar, filename: 'luz-in-avatar.jpg')


coworking = Coworking.find_by(name: "LUZ'IN")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{luz_in.name} a été créé"


# ******************************************************************************
# Coworking 06 —————————————————————————————————————————————————————————————————

chlorofeel = Coworking.create!(
  name: "ChloroFEEL",
  address: "7, rue de la Gare 69330 Meyzieu",
  opening_time: "09:30",
  closing_time: "17:30",
  contact_name: "Sandrine Rabilloud"
)

# Photos ———————————————————————————————————————————————————————————————————————

chlorofeel_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289905/Extramuros/Coworkings/chlorofeel-01_vu0ri8.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289905/Extramuros/Coworkings/chlorofeel-02_njqow3.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/chlorofeel-03_fafhcg.jpg'
]
chlorofeel_photo_number = 0
chlorofeel_photos.each do |photo|
  file = URI.open(photo)
  chlorofeel.photos.attach(io: file, filename: "chlorofeel-0#{chlorofeel_photo_number += 1}.jpg")
end

chlorofeel_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/chlorofeel-avatar_fnjr8c.jpg')
chlorofeel.avatar.attach(io: chlorofeel_avatar, filename: 'chlorofeel-avatar.jpg')


coworking = Coworking.find_by(name: "ChloroFEEL")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: secu_doc.id })

puts "#{chlorofeel.name} a été créé"



# ******************************************************************************
# Coworking 07 —————————————————————————————————————————————————————————————————

melchior_coworking = Coworking.create!(
  name: "MELCHIOR COWORKING",
  address: "7, rue de la Gare 69330 Meyzieu",
  opening_time: "09:30",
  closing_time: "17:30",
  contact_name: "Céline Passot et Isabelle Kratiroff"
)

# Photos ———————————————————————————————————————————————————————————————————————

melchior_coworking_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/melchior-coworking-01_vyowuh.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/melchior-coworking-02_bkcszr.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/melchior-coworking-03_cbpu3n.jpg'
]
melchior_coworking_photo_number = 0
melchior_coworking_photos.each do |photo|
  file = URI.open(photo)
  melchior_coworking.photos.attach(io: file, filename: "melchior-coworking-0#{melchior_coworking_photo_number += 1}.jpg")
end

melchior_coworking_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/melchior-coworking-avatar_fnjr8c.jpg')
melchior_coworking.avatar.attach(io: melchior_coworking_avatar, filename: 'melchior-coworking-avatar.jpg')


coworking = Coworking.find_by(name: "MELCHIOR COWORKING")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: secu_doc.id })

puts "#{melchior_coworking.name} a été créé"


# ******************************************************************************
# Coworking 08 —————————————————————————————————————————————————————————————————

ocw = Coworking.create!(
  name: "OCW",
  address: "37 Rue Paul Bovier Lapierre 69530 Brignais",
  opening_time: "08:30",
  closing_time: "17:30",
  contact_name: "Sophie Emmonet et Patrick Marjoux"
)

# Photos ———————————————————————————————————————————————————————————————————————

ocw_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/OCW-01_xnompx.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/OCW-02_sbyp2w.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/OCW-03_v4gln8.jpg'
]
ocw_photo_number = 0
ocw_photos.each do |photo|
  file = URI.open(photo)
  ocw.photos.attach(io: file, filename: "OCW-0#{ocw_photo_number += 1}.jpg")
end

ocw_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/OCW-avatar_pgymoa.jpg')
ocw.avatar.attach(io: ocw_avatar, filename: 'OCW-avatar.jpg')


coworking = Coworking.find_by(name: "OCW")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: secu_doc.id })

puts "#{ocw.name} a été créé"




# ******************************************************************************
# Coworking 09 —————————————————————————————————————————————————————————————————

mix_francheville = Coworking.create!(
  name: "MIX FRANCHEVILLE",
  address: "3 Place du Bourg 69340 Francheville",
  opening_time: "08:00",
  closing_time: "20:00",
  contact_name: "Bénédicte Poncet"
)

# Photos ———————————————————————————————————————————————————————————————————————

mix_francheville_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289906/Extramuros/Coworkings/mix-francheville-01_a8k0yc.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/mix-francheville-02_qa47hi.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/mix-francheville-03_liceks.jpg'
]
mix_francheville_photo_number = 0
mix_francheville_photos.each do |photo|
  file = URI.open(photo)
  mix_francheville.photos.attach(io: file, filename: "mix-francheville-0#{mix_francheville_photo_number += 1}.jpg")
end

mix_francheville_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/mix-francheville-avatar_zm7nvj.jpg')
mix_francheville.avatar.attach(io: mix_francheville_avatar, filename: 'mix-francheville-avatar.jpg')


coworking = Coworking.find_by(name: "MIX FRANCHEVILLE")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })

puts "#{mix_francheville.name} a été créé"



# ******************************************************************************
# Coworking 10 —————————————————————————————————————————————————————————————————

w_and_co = Coworking.create!(
  name: "W&Co",
  address: "56 avenue Chanoine Cartellier 69230 Saint-Genis-Laval",
  opening_time: "08:00",
  closing_time: "18:00",
  contact_name: "Carole Cochet"
)

# Photos ———————————————————————————————————————————————————————————————————————

w_and_co_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/w-and-co-01_jjtyhx.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289907/Extramuros/Coworkings/w-and-co-02_xumlr1.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/w-and-co-03_pneieg.jpg'
]
w_and_co_photo_number = 0
w_and_co_photos.each do |photo|
  file = URI.open(photo)
  w_and_co.photos.attach(io: file, filename: "w-and-co-0#{w_and_co_photo_number += 1}.jpg")
end

w_and_co_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/w-and-co-avatar_sotpuz.jpg')
w_and_co.avatar.attach(io: w_and_co_avatar, filename: 'w-and-co-avatar.jpg')


coworking = Coworking.find_by(name: "W&Co")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })

puts "#{w_and_co.name} a été créé"



