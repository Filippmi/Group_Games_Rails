class GameReview < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :content, presence: true, length: {minimum: 20, message: "needs a min of 20 characters"}
  accepts_nested_attributes_for :game
  validates_uniqueness_of :game_id, scope: :user_id, message: "already has a review that you wrote"
  
end
