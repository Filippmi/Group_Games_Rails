class GameReview < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :content, presence: true
  accepts_nested_attributes_for :game
  
end
