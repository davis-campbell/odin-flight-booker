class AddPassengerNumberToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :number_of_passengers, :integer
  end
end
