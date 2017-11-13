class GameGenre < ApplicationRecord
	belongs_to :genres
	belongs_to :games
end
