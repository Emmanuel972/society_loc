class AddReferencesToGames < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :user
  end
end
