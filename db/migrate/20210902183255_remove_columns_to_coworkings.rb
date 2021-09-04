class RemoveColumnsToCoworkings < ActiveRecord::Migration[6.0]
  def change
    remove_column :coworkings, :contact_first_name, :string
    remove_column :coworkings, :contact_last_name, :string
    remove_column :coworkings, :contact_email, :string
    add_column :coworkings, :contact_name, :string
  end
end
