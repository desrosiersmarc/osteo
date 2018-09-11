class RemoveFkToUserAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :user_appointments, :users
  end
end
