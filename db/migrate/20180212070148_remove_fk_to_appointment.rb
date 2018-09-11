class RemoveFkToAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :appointments, :appointment_types
  end
end
