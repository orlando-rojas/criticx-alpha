class CreateJoinTableGamePlatform < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :platforms do |t|
      # t.index [:game_id, :platform_id]
      # t.index [:platform_id, :game_id]
    end
    add_foreign_key :games_platforms, :games
    add_foreign_key :games_platforms, :platforms
  end
end
