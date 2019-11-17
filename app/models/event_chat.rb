class EventChat < ApplicationRecord
    belongs_to :event
    belongs_to :user, :foreign_key => "sender_id"
    has_many :event_chat_reps
end
