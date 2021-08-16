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

personas = [
  { email: "a.alami@company.com",
    password: "toto69", first_name:
    "Abdlekrim", last_name: "Alami",
    job_title: "Chef de projet",
    allowed_days_per_weeks: 2
  },
  { email: "ma.bernard@company.com",
    password: "toto69",
    first_name: "Marie-Ange",
    last_name: "Bernard",
    job_title: "Manager",
    allowed_days_per_weeks: 2,
  }
]

personas.each do |attributes|
  user = User.create!(attributes)
  puts "#{user.first_name} a été créé"
end

# Random Users —————————————————————————————————————————————————————————————————

def random_users
  url = "https://randomuser.me/api/?nat=fr"
  doc = URI.open(url).read
  json_parsed = JSON.parse(doc)

  random_user = json_parsed["results"]

  job_titles = ["Chief happiness manager", "Administrateur réseau", "Traffic manager", "Country opener", "Développeur back-end", "Développeur full-stack", "Administrateur Système", "Responsable communication", "Business Developer", "Développeur", "Intégrateur web", "Community Manager", "Designer UX", "Directeur technique", "Business Developer", "Account Manager" ]

  random_user.each do |attribute|
    attributes = {
      email: attribute["email"],
      password: "toto69",
      first_name: attribute["name"]["first"],
      last_name: attribute["name"]["last"],
      job_title: "#{job_titles.sample}",
      allowed_days_per_weeks: 2,
    }
    # image_tag["picture"]["large"]
    user = User.create!(attributes)
    puts "#{user.first_name} a été créé"
  end
end

5.times do
  random_users
end


puts "Création des teams..."
# changer l'api
url = "https://randomuser.me/api/?nat=fr"
doc = URI.open(url).read
json_parsed = JSON.parse(doc)

random_user = json_parsed["results"]

random_user.each do |attribute|
  puts attribute["name"]["first"]
end

puts "Et c'est finit !"

