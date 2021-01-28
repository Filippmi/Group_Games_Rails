class Game < ApplicationRecord
  # belongs_to :user, optional: true
  # belongs_to :categorie, optional: true
  # has_many :user_reviews
  # has_many :users, through: :user_reviews
  validates :title, :description, :number_of_players, presence: true 
end
