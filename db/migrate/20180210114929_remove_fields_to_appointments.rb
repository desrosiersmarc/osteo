class RemoveFieldsToAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :canceled_at, :string
    remove_column :appointments, :accepted_at, :string
    remove_column :appointments, :refused_at, :string
  end
end
