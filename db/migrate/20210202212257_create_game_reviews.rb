class CreateGameReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :game_reviews do |t|

      t.timestamps
    end
  end
end
