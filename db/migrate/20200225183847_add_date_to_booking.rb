class AddDateToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :string
    remove_column :bookings, :start_date
    remove_column :bookings, :end_date
  end
end
