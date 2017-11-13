class CreateGameDevelopers < ActiveRecord::Migration[5.1]
  def change
    create_table :game_developers do |t|
      t.integer :game_id
      t.integer :company_id
      t.timestamps
    end
  end
end
