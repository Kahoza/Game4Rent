class AddNeighbourhoodToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :neighbourhood, :string
  end
end
