class CategoriesController < ApplicationController
  
  def index
    redirect_if_not_logged_in
    @categories = Category.all
  end

  def show
    redirect_if_not_logged_in
    @category = Category.find_by_id(params[:id])
    
    @category_games = @category.games.alphabetize
  end

end