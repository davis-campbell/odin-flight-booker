class RenameColumnsInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :origin_id, :from_airport
    rename_column :flights, :destination_id, :to_airport
  end
end
