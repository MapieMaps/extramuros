team_prod = Team.create!(
  name: "Team production",
<<<<<<< HEAD
  description: "équipe 2",
  manager: User.find_by(email: "ma.bernard@company.com")
=======
  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit",
  # manager: User.find_by(email: "ma.bernard@company.com")
>>>>>>> 80127e6a194dcd2405807a16530de706fdbf3c04
)

User.last(5).each do |user|
  user.update!(team: team_prod)
end
