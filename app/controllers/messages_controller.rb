class MessagesController < ApplicationController

  def new
    load_room
    build_message
  end

  def create
    load_room
    build_message
    save_message or render 'new'
  end


  private

  def load_room
    @room = Room.find(params[:room_id])
  end

  def build_message
    @message ||= message_scope.build
    @message.attributes = message_params
  end

  def save_message
    if @message.save
      redirect_to @room
    end
  end

  def message_scope
    @room.messages
  end

  def message_params
    message_params = params[:message]
    message_params ? message_params.permit(:content) : {}
  end
end
