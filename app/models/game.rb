class Game < ApplicationRecord
  belongs_to :category
  validates :title, :description, :number_of_players, presence: true 
  accepts_nested_attributes_for :category
end
