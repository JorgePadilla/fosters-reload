class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @date1 = params[:date1] ? Date.parse(params[:date]) : Date.today + 1.month
    respond_to do |format|
      format.html
      format.js
    end
  end


end
