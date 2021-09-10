# ******************************************************************************
# Coworking 04 —————————————————————————————————————————————————————————————————

walter_technolac = Coworking.create!(
  name: "Walter Technolac",
  address: "18 porte du Grand Lyon 01700 Neyron",
  opening_time: "08:30",
  closing_time: "18:00",
  contact_name: "Manon Perrod"
)

# Photos ———————————————————————————————————————————————————————————————————————

walter_technolac_photos = [
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-01_buuecm.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-02_re0hmd.jpg',
  'https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-01_buuecm.jpg'
]
walter_technolac_photo_number = 0
walter_technolac_photos.each do |photo|
  file = URI.open(photo)
  walter_technolac.photos.attach(io: file, filename: "work-and-wall-0#{walter_technolac_photo_number += 1}.jpg")
end

walter_technolac_avatar = URI.open('https://res.cloudinary.com/mapiemap/image/upload/v1631289908/Extramuros/Coworkings/work-and-wall-avatar_wqyr7q.png')
walter_technolac.avatar.attach(io: walter_technolac_avatar, filename: 'work-and-wall-avatar.jpg')


coworking = Coworking.find_by(name: "Work & Wall")

CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: parking.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: lunch.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: printer.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: wifi.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: firewall.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: access.id })
CoworkingEquipement.create!({ coworking_id: coworking.id, equipement_id: seat.id })

puts "#{walter_technolac.name} a été créé"
