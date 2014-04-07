class BusLinesController < ApplicationController

  def index
    @bus_lines = BusLine.all
  end

  def new
    @bus_line = BusLine.new
  end

  def create
    @bus_line = BusLine.new(params[:bus_line])
    if @bus_line.save
      flash[:notice] = "Bus line created."
      redirect_to bus_lines_path
    else
      render 'new'
    end
  end

  def edit
    @bus_line = BusLine.find(params[:id])
  end

  def show
    @bus_line = BusLine.find(params[:id])
  end

  def update
    @bus_line = BusLine.find(params[:id])
    if @bus_line.update(params[:bus_line])
      flash[:notice] = "Bus line updated."
      redirect_to bus_line_path(@bus_line)
    else
      render 'edit'
    end
  end

  def destroy
    @bus_line = BusLine.find(params[:id])
    @bus_line.destroy
    redirect_to bus_lines_path
  end

end
