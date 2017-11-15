class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def view
		@game = Game.find(params[:id])
	end
end
