class RenameReferenceToUsersInTeams < ActiveRecord::Migration[6.0]
  def change
    remove_reference :teams, :user
    add_reference :teams, :manager, foreign_key: { to_table: :users }
  end
end
