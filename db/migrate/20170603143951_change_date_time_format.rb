class ChangeDateTimeFormat < ActiveRecord::Migration[5.0]
  def up
    change_column :events, :event_date, :datetime
  end

  def down
   change_column :events, :event_date, :date
  end
end
