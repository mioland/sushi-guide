class AddColumnToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :photo_url, :string
  end
end
