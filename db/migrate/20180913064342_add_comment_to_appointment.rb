class AddCommentToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :comment, :string
  end
end
