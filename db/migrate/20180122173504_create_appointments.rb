class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :appointment_type, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.date :canceled_at
      t.date :accepted_at
      t.date :refused_at

      t.timestamps
    end
  end
end
