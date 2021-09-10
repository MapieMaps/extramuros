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
  contact_name: "Sandrine Rabilloud"
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

