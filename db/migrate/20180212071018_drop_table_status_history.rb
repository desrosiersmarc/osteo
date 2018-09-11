class DropTableStatusHistory < ActiveRecord::Migration[5.1]
  def change
    drop_table 'status_histories'
  end
end
