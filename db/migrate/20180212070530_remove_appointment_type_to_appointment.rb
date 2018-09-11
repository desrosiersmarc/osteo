class RemoveAppointmentTypeToAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :appointment_type_id
  end
end
