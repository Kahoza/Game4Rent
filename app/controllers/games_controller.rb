class GamesController < ApplicationController
  before_action :set_game, only: [ :show, :edit, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


def index

  #   @games = @games.where(age_group: params[:age_group]) if params[:age_group].present? && params[:age_group] != ""
  #   @games = @games.where("neighbourhood ILIKE ?", params[:neighbourhood]) unless params[:city].blank?
  #   @games = @games.where.not(latitude: nil, longitude: nil) unless params[:address].blank?
  #   p params





  @games = Game.where.not(latitude: nil, longitude: nil)
  @markers = @games.map do |game|
    {
      lat: game.latitude,
      lng: game.longitude
    }
  end
end

def show
  # set_game
  @games = Game.select("games.*").where("category" == "game.neighbourhood")
 # @games = @games.where("neighbourhood ILIKE ?", params[:neighbourhood])

  # @games = Game.select("games.*").where("category"=="params[:neighbourhood]")





  if @game.latitude && @game.longitude
    @markers = [{
      lat: @game.latitude,
      lng: @game.longitude
      }]
   end
    @markers = @markers.compact
end

def new
  @game = Game.new
end

def create
  @game = Game.new(game_params)
  @game.user = current_user
  if @game.save
    redirect_to game_path(@game)
  else
    render :new
  end
end

def edit
  set_game
end

def update
  set_game
  @game.update(game_params)
  redirect_to game_path(@game)
end

def destroy
  set_game
  @game.destroy
  redirect_to games_path
end

private

def game_params
  params.require(:game).permit(:name, :description, :price, :address, :neighbourhood, :photo)
end

def set_game
  @game = Game.find(params[:id])
end

end
