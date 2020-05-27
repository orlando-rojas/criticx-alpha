class CreateJoinTableGameGenre < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :genres do |t|
      # t.index [:game_id, :genre_id]
      # t.index [:genre_id, :game_id]
    end
    add_foreign_key :games_genres, :games
    add_foreign_key :games_genres, :genres
  end
end
