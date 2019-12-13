class Chat < ApplicationRecord
    # モデルの関連
    belongs_to :sender, class_name: 'User'
    belongs_to :reciever, class_name: 'User'
  
    # バリデーション
    validates :chat, length: { maximum: 400 }
  
    mount_uploader :photo_url, AvatarUploader
end