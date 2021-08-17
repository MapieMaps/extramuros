marie_ange = User.create!(
  email: "ma.bernard@company.com",
  password: "toto69",
  first_name: "Marie-Ange",
  last_name: "Bernard",
  job_title: "Manager",
  allowed_days_per_weeks: 2
)
marie_ange.avatar.attach(io: File.open(Rails.root.join('app/assets/images/users/persona_01.jpg')), filename: 'persona_01.jpg')
puts "#{marie_ange.first_name} a été créé"

abdlekrim = User.create!(
  email: "a.alami@company.com",
  password: "toto69",
  first_name: "Abdlekrim",
  last_name: "Alami",
  job_title: "Chef de projet",
  allowed_days_per_weeks: 2,
)
abdlekrim.avatar.attach(io: File.open(Rails.root.join('app/assets/images/users/persona_02.jpg')), filename: 'persona_02.jpg')
puts "#{abdlekrim.first_name} a été créé"


puts "———————————————————"
