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

# puts "Creating teams..."
# team = { name: "Team #1 (test)", description: "Seed team test, équipe de choc" }
# [ team ].each do |attributes|
#   team = Team.create!(attributes)
#   puts "Created #{team.name}"
# end

puts "Création des users..."

### Personas
abdel = { email: "a.alami@company.com", password: "toto69", first_name: "Abdlekrim", last_name: "Alami", job_title: "Chef de projet", allowed_days_per_weeks: 2 }
mimi = { email: "ma.bernard@company.com", password: "toto69", first_name: "Marie-Ange", last_name: "Bernard", job_title: "Manager", allowed_days_per_weeks: 2 }


#regrouper dans une variable les users
[ abdel, mimi ].each do |attributes|
  user = User.create!(attributes)
  puts "#{user.first_name} a été créé"
end

### Random users :

url = "https://randomuser.me/api/?nat=fr"
doc = URI.open(url).read
json_parsed = JSON.parse(doc)

random_user = json_parsed["results"]

job_title_example = ["Responsable communication", "Business Developer", "Développeur", "Intégrateur web", "Community Manager", "Designer UX", "Directeur technique", "Business Developer", "Account Manager" ]

random_user.each do |attribute|
  email = attribute["email"]
  password = "toto69"
  first_name = attribute["name"]["first"]
  last_name = attribute["name"]["last"]
  job_title = job_title_example.sample
  allowed_days_per_weeks = 2
  puts email
  puts first_name, job_title
end

# 5.times do
#   random_user.each do |user|
#     email = user["email"]
#     password = "toto69"
#     # first_name = user["first"]
#     # last_name = user["last"]
#     # profile_picture_path = "https://image.tmdb.org/t/p/w500/#{poster_url}"
#     User.create!(email: email, password: password)
#     puts "#{user.email} a été créé"
#   end
# end


puts "Création des teams..."
# changer l'api
url = "https://randomuser.me/api/?nat=fr"
doc = URI.open(url).read
json_parsed = JSON.parse(doc)

random_user = json_parsed["results"]

random_user.each do |attribute|
  puts attribute["name"]["first"]
end


puts "C'est finit !"

# create_table "teams", force: :cascade do |t|
#   t.string "name"
#   t.string "description"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.bigint "user_id"
#   t.index ["user_id"], name: "index_teams_on_user_id"
# end



# create_table "users", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.string "first_name"
#   t.string "last_name"
#   t.string "job_title"
#   t.integer "allowed_days_per_weeks"
#   t.integer "phone_number"
#   t.bigint "team_id"
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   t.index ["team_id"], name: "index_users_on_team_id"
# end


