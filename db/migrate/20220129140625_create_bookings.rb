class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :id
      t.datetime :booking_from
      t.datetime :booking_to
      t.integer :vehicle_id
      t.integer :user_id
      t.integer :review_id

      t.timestamps
    end
  end
end
