class GameReviewsController < ApplicationController
  before_action :find_game, only: [:index, :show, :edit, :new, :create]
  before_action :find_gamereview, only: [:index, :show, :edit, :update, :destroy]

  def index
    redirect_if_not_logged_in
    @game_reviews = GameReview.all
  end
  
  def show
    
  end

  def new
    # byebug
    if @game
      @g_r = @game.game_reviews.build
      session[:gamereview_id] = @g_r.id if @g_r
      render :new_game_review
    end
  end

  def create
    # byebug
    @g_r = current_user.game_reviews.build(gamereview_params)
    if @g_r.save

      redirect_to user_path(current_user)
    else
      flash.now[:error] = @g_r.errors.full_messages
      render :new_game_review
    end
  end

  def edit 
    redirect_if_no_gamereview
  end

  def update
    if @g_r.update(gamereview_params)
      flash[:notice] = "#{@g_r.game.title} was updated"
      redirect_to user_path(current_user)
    else
      flash.now[:error] = @g_r.errors.full_messages
      render :edit
    end
  end

  def destroy
    redirect_if_not_users_review
    @g_r.destroy
    flash[:notice] = "#{@g_r.game.title} review was deleted from #{current_user.username}'s reviews"
    redirect_to user_path(current_user)
  end

  private
    def gamereview_params
      params.require(:game_review).permit(:content, :rating, :game_id, game_attributes: [:title])
    end

    def find_game
      if params[:game_id]
        @game = Game.find_by_id(params[:game_id])
      end
    end

    def find_gamereview
      @g_r = GameReview.find_by_id(params[:id])
    end

    def redirect_if_not_users_review
      flash[:error] = ["You arent the one who created this review"] unless @g_r.user == current_user
      redirect_to user_path(current_user) 
    end

    def redirect_if_no_gamereview
      redirect_to user_path(current_user) unless @g_r.id
    end
end
