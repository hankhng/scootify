class ChangeBookingPriceToIntegerInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_price, :string
    add_column :bookings, :booking_price, :integer
  end
end
