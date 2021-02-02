class Category < ApplicationRecord
  has_many :games

  # def game_category
  #   self.games ? self.games.title : "No games added"
  # end
end
