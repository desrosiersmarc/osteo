class RemoveFieldsToAppointment < ActiveRecord::Migration[5.1]
  def change
    remove_reference :appointments, :user
  end
end
