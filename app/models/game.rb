class Game < ApplicationRecord
  belongs_to :user
  belongs_to :categorie
  has_many :user_reviews
  has_many :users through, :user_reviews
end
