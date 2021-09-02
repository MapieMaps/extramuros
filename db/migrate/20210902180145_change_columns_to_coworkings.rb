class ChangeColumnsToCoworkings < ActiveRecord::Migration[6.0]
  def change
    remove_column :coworkings, :equipements, :string
    add_column :coworkings, :opening_time, :time
    add_column :coworkings, :closing_time, :time
  end
end
