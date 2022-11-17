class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    arg = game_params
    arg[:user_id] = current_user.id
    @game = Game.new(arg)
    if @game.save!
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy

  end

  private

  def set_game
    #@game = Game.find(params[:game_id])
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :picture)
  end
end
