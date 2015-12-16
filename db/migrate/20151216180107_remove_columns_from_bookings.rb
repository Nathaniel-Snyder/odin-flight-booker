class RemoveColumnsFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :booking_id, :string
    remove_column :bookings, :passenger_id, :string
  end
end
