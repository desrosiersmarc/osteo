class AddUserAppointmentRefToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointments, :user_appointment, foreign_key: true
  end
end
