class LocationsController < ApplicationController
  before_action :set_location, only: [:show]
  def index
    @locations = Location.where( user_id: current_user)
  end

  def show
  end

  def new
    @game = Game.find(params[:game_id])
    @location = Location.new
  end

  def create
    @game = Game.find(params[:game_id])
    arg = location_params
    arg[:user_id] = current_user.id
    arg[:game_id] = params[:game_id]
    @location = Location.new(arg)
    if @location.save
      redirect_to locations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :start, :end)
  end
end
