class RoomsController < ApplicationController
  def index
    load_rooms
  end

  def show
    load_room
  end

  def new
    build_room
  end

  def create
    build_room
    save_room or render 'new'
  end

  def edit
    load_room
    build_room
  end

  def update
    load_room
    build_room
    save_room or render 'edit'
  end

  private
  def load_rooms
    @rooms = room_scope
  end

  def build_room
    @room ||= room_scope.build
    @room.attributes = room_params
  end

  def load_room
    @room ||= room_scope.find(params[:id])
  end

  def save_room
    if @room.save
      redirect_to @room
    end
  end

  def room_scope
    Room.all
  end

  def room_params
    room_params = params[:room]
    room_params ? room_params.permit(:name) : {}
  end

end
