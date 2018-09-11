class AddBookableToAppointmentTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :appointment_types, :bookable, :boolean
  end
end
