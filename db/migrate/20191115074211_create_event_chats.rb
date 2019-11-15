class CreateEventChats < ActiveRecord::Migration[5.2]
  def change
    create_table :event_chats do |t|
      t.integer :event_id
      t.integer :sender_id
      t.string :chat

      t.timestamps
    end
  end
end