class ReservationsController < ApplicationController
  def step1

    @ddate = params[:departure_date]
    @room = Room.find(params[:room_id])

    
  end
end
