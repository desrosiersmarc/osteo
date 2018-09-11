class RemoveFkToUserAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :user_appointments, :appointments
  end
end
