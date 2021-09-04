# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Nettoyage de la base de données......"
puts "Ça va être un peu long......"

User.destroy_all
Equipement.destroy_all


puts "Patience......"

Dir[ Rails.root.join('db/seeds/*.rb') ].sort.each do |file|
  puts "———————————————————————"
  puts "Traitement du fichier : #{file.split('/').last}"

  require file
end

puts "———————————————————————"

puts "Et c'est finit !"

