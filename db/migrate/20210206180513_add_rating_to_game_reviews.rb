class AddRatingToGameReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :game_reviews, :rating, :integer
  end
end
