class AddReviewToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :review, :string
    add_column :appointments, :rate, :integer
  end
end
