class AddBookingsIdToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :bookings_id, :integer
  end
end
