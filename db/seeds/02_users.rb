require 'open-uri'
require 'json'

def random_users
  url = "https://randomuser.me/api/?nat=fr"
  doc = URI.open(url).read
  json_parsed = JSON.parse(doc)

  random_user = json_parsed["results"]

  job_titles = ["Chief happiness manager", "Administrateur réseau", "Traffic manager", "Country opener", "Développeur back-end", "Développeur full-stack", "Administrateur Système", "Responsable communication", "Business Developer", "Développeur", "Intégrateur web", "Community Manager", "Designer UX", "Directeur technique", "Business Developer", "Account Manager" ]
  num = 8.times.map{rand(10)}.join

  random_user.each do |attribute|
    attributes = {
      email: attribute["email"],
      password: "toto69",
      first_name: attribute["name"]["first"],
      last_name: attribute["name"]["last"],
      job_title: "#{job_titles.sample}",
      allowed_days_per_weeks: 2,
      phone_number: "06#{num} "
    }
    random_avatar = open(attribute["picture"]["large"])

    user = User.create(attributes)

    user.avatar.attach(io: random_avatar, filename: 'avatar.jpg')
    puts "#{user.first_name} a été créé"
  end
end

20.times do
  random_users
end
