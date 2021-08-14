# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
# Team.destroy_all
User.destroy_all

# puts "Creating teams..."
# team = { name: "Team #1 (test)", description: "Seed team test, équipe de choc" }
# [ team ].each do |attributes|
#   team = Team.create!(attributes)
#   puts "Created #{team.name}"
# end

puts "Creating users..."

abdel = { email: "a.alami@company.com", password: "toto69", first_name: "Abdlekrim", last_name: "Alami", job_title: "Chef de projet", allowed_days_per_weeks: 2 }
mimi = { email: "ma.bernard@company.com", password: "toto69", first_name: "Marie-Ange", last_name: "Bernard", job_title: "Manager", allowed_days_per_weeks: 2 }


#regrouper dans une variable les users
[ abdel, mimi ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished!"


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


