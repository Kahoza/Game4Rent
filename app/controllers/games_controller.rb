class GamesController < ApplicationController
  before_action :set_game, only: [ :show, :edit, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


def index
  @games = Game.all
end

def show
  set_game
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
  params.require(:game).permit(:name, :description, :price, :photo)
end

def set_game
  @game = Game.find(params[:id])
end

end
