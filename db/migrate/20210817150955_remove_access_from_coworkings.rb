class RemoveAccessFromCoworkings < ActiveRecord::Migration[6.0]
  def change
    remove_column :coworkings, :access, :text
  end
end
