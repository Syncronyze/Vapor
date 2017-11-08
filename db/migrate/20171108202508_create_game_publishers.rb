class CreateGamePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :game_publishers do |t|

      t.timestamps
    end
  end
end
