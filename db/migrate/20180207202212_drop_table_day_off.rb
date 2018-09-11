class DropTableDayOff < ActiveRecord::Migration[5.1]
  def change
    drop_table 'days_offs'
  end
end
