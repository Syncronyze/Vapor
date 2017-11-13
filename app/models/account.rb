class Account < ApplicationRecord
	#has_many :game_creators
	#has_many :orders
	#has_many :games, through: :owned_games
	
	validates :login_name, :password, :username, :email, :is_admin, presence: true
end
