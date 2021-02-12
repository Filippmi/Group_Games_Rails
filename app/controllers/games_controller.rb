class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]

  def index
    redirect_if_not_logged_in
    @games = Game.all
  end

  def top5
    redirect_if_not_logged_in
    @games = Game.top_5
  end

  def new
    redirect_if_not_logged_in
    @game = Game.new
  end

  def show
    redirect_if_not_logged_in
  end
  
  def create
    redirect_if_not_logged_in
    @game = Game.new(game_params)
    if @game.save
      session[:game_id] = @game.id if @game
      redirect_to games_path
    else
      flash.now[:error] = @game.errors.full_messages
      render :new
    end
  end


  private
    def game_params
      params.require(:game).permit(:title, :description, :number_of_players, :category_id, category_attributes: [:name])
    end

    def find_game
      @game = Game.find_by_id(params[:id])
    end

end
