team_prod = Team.create!(
  name: "Team production",
  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit",
  # manager: User.find_by(email: "ma.bernard@company.com")
)

User.last(5).each do |user|
  user.update!(team: team_prod)
end
