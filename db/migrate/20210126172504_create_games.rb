class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :descrition
      t.integer :number_of_players
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
