class Game < ApplicationRecord
	has_many :game_publishers
	has_many :game_developers
	has_many :game_creators
	has_many :accounts, through: :owned_games
	has_many :orders, through: :order_items
	has_many :genres, through: :game_genres

	validates :name, :price, :release_date, presence: true

end
