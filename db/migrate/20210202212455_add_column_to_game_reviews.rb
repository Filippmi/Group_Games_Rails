class AddColumnToGameReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :game_reviews, :game, null: false, foreign_key: true
    add_reference :game_reviews, :user, null: false, foreign_key: true
  end
end
