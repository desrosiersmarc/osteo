class RemoveForeginKeyToAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :appointments, :user_appointments
  end
end
