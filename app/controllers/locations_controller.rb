class LocationsController < ApplicationController
  before_action :set_location, only: [:show]
  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      relocate_to locations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def location_params
    params.require(:location).permit(:name, :game_id, :user_id, :start, :end)
  end
end
