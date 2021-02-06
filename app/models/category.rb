class Category < ApplicationRecord
  has_many :games

  def self.alphabetize_categories
    order(:name)
  end
end
