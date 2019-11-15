class EventChatRep < ApplicationRecord
    belongs_to :event_chat
    belongs_to :user, :foreign_key => "rep_user_id"
end
