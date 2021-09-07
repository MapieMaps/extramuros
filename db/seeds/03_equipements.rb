# Liste des équipements :

equipements = [
  "Accès PMR",
  "Doc. unique de secu",
  "Espace repas",
  "Fauteuils ergonomiques",
  "Firewall", "Imprimante",
  "Internet Haut Débit",
  "Parking Gratuit"
]

equipements.each do |equipement_name|
  Equipement.create!(name: "#{equipement_name}")
end


