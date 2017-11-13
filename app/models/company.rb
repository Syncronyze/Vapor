class Company < ApplicationRecord
	#has_many :games, through: :game_developers
	#has_many :games, through: :game_publishers

	validates :name, presence: true
end
