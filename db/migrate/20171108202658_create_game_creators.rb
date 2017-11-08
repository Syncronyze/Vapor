class CreateGameCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :game_creators do |t|

      t.timestamps
    end
  end
end
