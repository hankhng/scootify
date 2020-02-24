class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :booking_price
      t.text :comment
      t.bigint :renter_id, foreign_key: true
      t.references :scooter, foreign_key: true

      t.timestamps
    end
  end
end
