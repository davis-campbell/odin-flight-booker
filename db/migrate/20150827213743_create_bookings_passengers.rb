class CreateBookingsPassengers < ActiveRecord::Migration
  def change
    create_table :bookings_passengers do |t|
      t.integer :booking_id
      t.integer :passenger_id
    end
  end
end
