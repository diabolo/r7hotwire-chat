class RoomsController < ApplicationController
  def index
    load_rooms
  end

  private
  def load_rooms
    @rooms = rooms_scope
  end

  def rooms_scope
    Rooms.all
  end

end
