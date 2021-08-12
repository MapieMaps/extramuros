class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job_title, :string
    add_column :users, :allowed_days_per_weeks, :integer
    add_column :users, :phone_number, :integer
  end
end
