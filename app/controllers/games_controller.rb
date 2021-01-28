class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]

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
      flash.now[:error] = @game.errors.full_messages
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
    if @game.update(game_params)
      flash[:notice] = "#{@game.title} was updated"
      redirect_to game_path(@game)
    else
      flash.now[:error] = @game.errors.full_messages
      render :edit
    end
  end

  def destroy
    @game.destroy
    flash[:notice] = "#{@game.title} was deleted!"
    redirect_to games_path
  end





  private
    def game_params
      params.require(:game).permit(:title, :description, :number_of_players)
    end

    def find_game
      @game = Game.find_by_id(params[:id])
    end

end
