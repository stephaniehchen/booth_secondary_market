class ChangeEventTableName < ActiveRecord::Migration[5.0]
  def change
     rename_column :posts, :events_id, :event_id
   end
end
