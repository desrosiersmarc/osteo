class DropTable2 < ActiveRecord::Migration[5.1]
  def change
    drop_table 'schedules'
  end
end
