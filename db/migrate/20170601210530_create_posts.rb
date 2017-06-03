class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :events_id
      t.text :content
      t.boolean :active
      t.integer :ticket_amount
      t.integer :user_id
      t.string :sell_buy
      t.integer :number_tickets

      t.timestamps

    end
  end
end
