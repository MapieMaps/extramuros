class RemoveContactDescriptionFromCoworkings < ActiveRecord::Migration[6.0]
  def change
    remove_column :coworkings, :contact_description, :text
  end
end
