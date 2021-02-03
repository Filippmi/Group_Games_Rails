class User < ApplicationRecord

  has_many :game_reviews
  has_many :users, through: :game_reviews

  validates :email, :username, presence: true, uniqueness: true
  has_secure_password
end
