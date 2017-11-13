class GameDeveloper < ApplicationRecord
	belongs_to :games
	belongs_to :companies
end
