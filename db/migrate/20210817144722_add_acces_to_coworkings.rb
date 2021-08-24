class AddAccesToCoworkings < ActiveRecord::Migration[6.0]
  def change
    add_column :coworkings, :access, :text
  end
end
