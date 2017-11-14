class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.datetime :release_date
      t.string :image
      t.timestamps
    end
  end
end
