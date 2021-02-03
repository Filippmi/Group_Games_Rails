class Game < ApplicationRecord
  belongs_to :category
  has_many :game_reviews
  has_many :users, through: :game_reviews
  
  validates :title, :description, :number_of_players, presence: true 
  accepts_nested_attributes_for :category
end
