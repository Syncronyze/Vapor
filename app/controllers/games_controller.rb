class GamesController < ApplicationController
	def index
		@games = Game.all
		@genres = Genre.all
	end

	def view
		@game = Game.find(params[:id])
	end

	def search_games
		genres = params[:genre_search][:genre_ids].delete_if { |x| x.empty? }
		query = Game.all

		if(!genres.empty?)
			query = query.joins(:genres).where( genres: { id: params[:genre_search][:genre_ids] }).group(:name)
		end



		@games = query.order(:name)

		respond_to do |format|
			format.js
		end
	end
end
