class RemoveFkToStatusHistory < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :status_histories, :appointments
  end
end
