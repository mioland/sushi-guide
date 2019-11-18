class EventChatRep < ApplicationRecord
    belongs_to :event_chat
    belongs_to :user, foreign_key: 'rep_user_id'
  
    # バリデーション
    validates :chat, length: { maximum: 400 }
  
    mount_uploader :photo_url, AvatarUploader
end