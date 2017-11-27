class GamesController < ApplicationController
	def index
		@games = Game.all.order(:name)
		@genres = Genre.all
	end

	def view
		@game = Game.find(params[:id])
		@in_cart = session[:cart].include? params[:id]
	end

	def search_games
		genres = params[:genre_search][:genre_ids].delete_if { |x| x.empty? }
		searchterm = params[:hidden_search_box]
		@games = Game.with_genres(genres, searchterm.strip)

		respond_to do |format|
			format.js
		end
	end
end
