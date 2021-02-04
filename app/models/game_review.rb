class GameReview < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :content, presence: true, length: {minimum: 20, message: "You can write a litte more than that about the game"}
  accepts_nested_attributes_for :game
  validates_uniqueness_of :game_id, scope: :user_id, message: "You have already revwied this game"
  
end
