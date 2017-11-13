class GameCreator < ApplicationRecord
	belongs_to :account
	belongs_to :game
end
