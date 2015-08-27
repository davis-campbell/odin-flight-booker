class RenameBookingIdInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :bookings_id, :booking_id
  end
end
