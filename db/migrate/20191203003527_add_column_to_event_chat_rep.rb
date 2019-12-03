class AddColumnToEventChatRep < ActiveRecord::Migration[5.2]
  def change
    add_column :event_chat_reps, :photo_url, :string
  end
end