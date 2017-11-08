class CreateGameDevelopers < ActiveRecord::Migration[5.1]
  def change
    create_table :game_developers do |t|

      t.timestamps
    end
  end
end
