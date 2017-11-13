class GameCreator < ApplicationRecord
	belongs_to :accounts
	has_one :games
end
