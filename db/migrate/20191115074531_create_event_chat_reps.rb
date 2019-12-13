class CreateEventChatReps < ActiveRecord::Migration[5.2]
  def change
    create_table :event_chat_reps do |t|
      t.integer :event_chat_id
      t.integer :rep_user_id
      t.string :chat

      t.timestamps
    end
  end
end