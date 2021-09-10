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


