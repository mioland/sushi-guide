class ChatsController < ApplicationController
  before_action :authenticate_user!, only: %i[index select_user new create destroy]
  def index
    @chat_users = ChatUser.where("user_id=#{current_user.id}")
  end

  def select_user
    if request.referer&.include?('/chats/select_user')
    else
      session[:query_users] = nil
    end
  end

  def query_user
    session[:query_users] = nil
    query_users = query
    session[:query_users] = query_users
    redirect_to '/chats/select_user'
    # render action: "select_user"
  end

  def new
    @chat = Chat.new
    cid = current_user.id
    @recv_user = User.find_by(id: params[:id].split('&')[0])
    @chats = Chat.where("(sender_id = #{params[:id].split('&')[0]} and reciever_id= #{cid}) or (sender_id = #{cid} and reciever_id = #{params[:id].split('&')[0]})")
  end

  def create
    chat = Chat.new
    chat.sender_id = current_user.id
    chat.reciever_id = params[:id]
    chat.chat = params[:chat][:chat]
    chat.save!
    redirect_to "/chats/#{params[:id]}"
  end

  private

  def query
    if params[:user].present? && !params[:user][:name].empty?
      users = User.where('nick_name LIKE ? AND id !=?', "%#{params[:user][:name]}%", current_user.id)
      users
    else
      []
    end
  end
end