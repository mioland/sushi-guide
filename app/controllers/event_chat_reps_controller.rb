class EventChatRepsController < ApplicationController
  before_action :authenticate_user!, only: %i[index create new]

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
    event_chat_rep.photo_url = params[:event_chat_rep][:photo_url]
    event_chat_rep.rep_user_id = current_user.id
    event_chat_rep.save!
    redirect_to event_chat_reps_new_path(event_chat_id: event_chat_rep.event_chat_id)
  end
end