class StopsController < ApplicationController

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])

    if @stop.save
      flash[:notice] = "The stop was created."
      redirect_to stop_path(@stop)
    else
      render 'new'
    end
  end

  def show
    @stop = Stop.find(params[:id])
    @bus_line = @stop.bus_line
    @station = @stop.station
  end

end

