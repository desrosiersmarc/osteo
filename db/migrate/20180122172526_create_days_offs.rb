class CreateDaysOffs < ActiveRecord::Migration[5.1]
  def change
    create_table :days_offs do |t|
      t.integer :day_of_week
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
