class AddColumnToEventChat < ActiveRecord::Migration[5.2]
  def change
    add_column :event_chats, :photo_url, :string
  end
end