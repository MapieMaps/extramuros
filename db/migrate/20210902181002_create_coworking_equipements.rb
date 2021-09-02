class CreateCoworkingEquipements < ActiveRecord::Migration[6.0]
  def change
    create_table :coworking_equipements do |t|
      t.references :equipement, null: false, foreign_key: true
      t.references :coworking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
