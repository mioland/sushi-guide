class EventChatRepsController < ApplicationController
    before_action :logged_in_user, only:[:index,:create,:new]
  
    def new
      @event_chat_reps = EventChatRep.where(event_chat_id: params[:event_chat_id])
      @event_chat_rep = EventChatRep.new
      @event_chat_id = params[:event_chat_id]
      @event_chat = EventChat.find(@event_chat_id)
    end
  
    def create
      event_chat_rep = EventChatRep.new
      event_chat_rep.chat = params[:event_chat_rep][:chat]
      event_chat_rep.event_chat_id = params[:event_chat_rep][:event_chat_id]
      event_chat_rep.rep_user_id = current_user.id
      event_chat_rep.save!
      redirect_to event_chats_path(event_id: event_chat_rep.event_chat.event_id)
    end
end