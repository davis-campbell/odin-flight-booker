class ChangeAirportsInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :to_airport, :to_airport_id
    rename_column :flights, :from_airport, :from_airport_id
  end
end
