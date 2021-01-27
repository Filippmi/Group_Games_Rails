class GamesController < ApplicationController
  before_action :find_game, only: [:show]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
  end
  
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end






  private
    def game_params
      params.require(:game).permit(:title, :description, :number_of_players)
    end

    def find_game
      @game = Game.find_by(params[:id])
    end

end
