class Company < ApplicationRecord
	has_many :game_developers
	has_many :games, through: :game_developers
	has_many :game_publishers
	has_many :games, through: :game_publishers

	validates :name, presence: true
end
