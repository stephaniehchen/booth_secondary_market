class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :event_name
      t.date :event_date
      t.string :location_address
      t.string :url
      t.string :image_url
      t.integer :organizer_id
      t.text :description

      t.timestamps

    end
  end
end
