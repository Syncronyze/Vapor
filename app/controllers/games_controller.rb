class GamesController < ApplicationController
	def index
		@games = Game.all.order(:name)
		@genres = Genre.all
	end

	def view
		@game = Game.find(params[:id])
	end

	def search_games
		genres = params[:genre_search][:genre_ids].delete_if { |x| x.empty? }
		@games = Game.with_genres(genres)
		# if(!genres.empty?)
		# 	@games = Game.with_genres(genres)
		# else
		# 	@games = Game.all
		# end

		respond_to do |format|
			format.js
		end
	end
end
