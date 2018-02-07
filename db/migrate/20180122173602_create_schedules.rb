class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.date :start_time
      t.date :end_time
      t.references :appointment, foreign_key: true
      t.references :days_off, foreign_key: true

      t.timestamps
    end
  end
end
