class AddDescToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :examples, :string
  end
end
