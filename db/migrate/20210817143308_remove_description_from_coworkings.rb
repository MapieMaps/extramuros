class RemoveDescriptionFromCoworkings < ActiveRecord::Migration[6.0]
  def change
    remove_column :coworkings, :description, :text
  end
end
