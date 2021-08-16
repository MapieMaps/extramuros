# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts "Nettoyage de la base de données......"
Team.destroy_all
User.destroy_all

puts "Création des users..."

# Personas —————————————————————————————————————————————————————————————————————

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

# # Random Users —————————————————————————————————————————————————————————————————

# def random_users
#   url = "https://randomuser.me/api/?nat=fr"
#   doc = URI.open(url).read
#   json_parsed = JSON.parse(doc)

#   random_user = json_parsed["results"]

#   job_titles = ["Chief happiness manager", "Administrateur réseau", "Traffic manager", "Country opener", "Développeur back-end", "Développeur full-stack", "Administrateur Système", "Responsable communication", "Business Developer", "Développeur", "Intégrateur web", "Community Manager", "Designer UX", "Directeur technique", "Business Developer", "Account Manager" ]

#   random_user.each do |attribute|
#     attributes = {
#       email: attribute["email"],
#       password: "toto69",
#       first_name: attribute["name"]["first"],
#       last_name: attribute["name"]["last"],
#       job_title: "#{job_titles.sample}",
#       allowed_days_per_weeks: 2
#     }

#     user = User.create!(attributes)
#     puts "#{user.first_name} a été créé"
#   end
# end

# 3.times do
#   random_users
# end


# puts "Création des teams..."

puts "Et c'est finit !"

