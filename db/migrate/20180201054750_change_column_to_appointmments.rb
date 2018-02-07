class ChangeColumnToAppointmments < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :start_date, :datetime
    change_column :appointments, :end_date, :datetime
  end
end
