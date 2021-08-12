class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.boolean :past
      t.string :confirmation_status

      t.timestamps
    end
  end
end
