class ChangeColumnToEquipements < ActiveRecord::Migration[6.0]
  def change
    remove_column :equipements, :type, :string
    add_column :equipements, :name, :string
  end
end
