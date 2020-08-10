class DestinationsController < ApplicationController
  def show
    @destinations = Destination.all 
  end

  def index
    @destination = find_destination
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)
    redirect_to destination_path(@destination)
  end

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end
  
  def destination_params
    params.require(:destination).permit(name: , country:)
end
