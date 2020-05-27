class AddParentToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :parent, index: true
  end
end
