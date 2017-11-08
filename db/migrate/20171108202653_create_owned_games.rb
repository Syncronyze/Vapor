class CreateOwnedGames < ActiveRecord::Migration[5.1]
  def change
    create_table :owned_games do |t|

      t.timestamps
    end
  end
end
