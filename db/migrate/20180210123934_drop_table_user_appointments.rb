class DropTableUserAppointments < ActiveRecord::Migration[5.1]
  def change
    drop_table 'user_appointments'
  end
end
