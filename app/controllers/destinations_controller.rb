class DestinationsController < ApplicationController
  
  def index
    @destinations = Destination.all
  end

  def show
    @destination = find_destination
    @average_age = @destination.avg_age
    @best_destination = @destination.most_likes
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
    params.require(:destination).permit(:name , :country)
  end
end

