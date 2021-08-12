class CreateCoworkings < ActiveRecord::Migration[6.0]
  def change
    create_table :coworkings do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :equipements
      t.string :contact_first_name
      t.string :contact_last_name
      t.text :contact_description
      t.string :contact_email

      t.timestamps
    end
  end
end
