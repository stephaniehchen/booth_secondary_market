class RemoveColumnToPost < ActiveRecord::Migration[5.0]
  def up
    change_column :events, :event_name, :string
  end

  def down
   change_column :events, :event_name, :text
  end
end
