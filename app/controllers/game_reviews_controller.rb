class GameReviewsController < ApplicationController
  before_action :find_game, only: [:index, :show, :new, :create]
  before_action :find_gamereview, only: [:index, :show, :edit, :update, :destroy]

  def index
    @game_reviews = GameReview.all
  end
  
  def show
    
  end

  def new
    # byebug
    if @game
      @g_r = @game.game_reviews.build
      render :new_game_review
    end
  end

  def create
    # byebug
    @g_r = current_user.game_reviews.build(gamereview_params)
    if @g_r.save

      redirect_to games_path
    else
      flash.now[:error] = @g_r.errors.full_messages
      render :new_game_review
    end
  end

  def edit 

  end

  def update
    
  end

  def delete
    
  end

  private
    def gamereview_params
      params.require(:game_review).permit(:content, :game_id, game_attributes: [:title])
    end

    def find_game
      if params[:game_id]
        @game = Game.find_by_id(params[:game_id])
      end
    end

    def find_gamereview
      @g_r = GameReview.find_by_id(params[:id])
    end
end
