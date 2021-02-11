class Game < ApplicationRecord
  belongs_to :category
  has_many :game_reviews
  has_many :users, through: :game_reviews

  validates_uniqueness_of :title
  validates :title, :description, :number_of_players, presence: true 
  accepts_nested_attributes_for :category


  def self.alphabetize
    order(:title)
  end
  
  def self.top_5
    left_joins(:game_reviews).group(:id).order('AVG(game_reviews.rating) DESC').limit(5)
  end
end