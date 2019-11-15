class EventChatsController < ApplicationController
    before_action :logged_in_user, only:[:index,:create,:new]
  
    def index
      @event_chats = EventChat.where(event_id: params[:event_id])
      @event_id = params[:event_id]
      @event_chat = EventChat.new
    end
  
    def create
     event_chat = EventChat.new
     event_chat.event_id = params[:event_chat][:event_id]
     event_chat.sender_id = current_user.id
     event_chat.chat = params[:event_chat][:chat]
     event_chat.save!
     redirect_to event_chats_path(event_id: event_chat.event_id)
    end
end