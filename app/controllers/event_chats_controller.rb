class EventChatsController < ApplicationController
  before_action :authenticate_user!, only: %i[index create new]
  before_action :event_app_auth, only: [:index]

  def index
    @event_chats = EventChat.where(event_id: params[:event_id])
    @event_id = params[:event_id]
    @event = Event.find_by(id: params[:event_id])
    @event_chat = EventChat.new
  end

  def create
    event_chat = EventChat.new
    event_chat.event_id = params[:event_chat][:event_id]
    event_chat.sender_id = current_user.id
    event_chat.chat = params[:event_chat][:chat]
    event_chat.photo_url = params[:event_chat][:photo_url]
    event_chat.save! if event_chat.chat.present? || event_chat.photo_url.present?
    redirect_to event_chats_path(event_id: event_chat.event_id)
  end

  private

  def event_app_auth
    @event_app = EventApp.find_by(event_id: params[:event_id], user_id: current_user.id)
    redirect_to event_apps_path if @event_app.nil?
  end
end