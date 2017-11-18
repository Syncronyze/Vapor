class GamesController < ApplicationController
	def index
		@games = Game.all
		@genres = Genre.all
	end

	def view
		@game = Game.find(params[:id])
	end

	def by_genre
		genres = params[:genre_search][:genre_ids].delete_if { |x| x.empty? }
		@games = Game.where(id: Game.with_all_genres(genres))
		#@games = Game.all.joins(:genres).where( genres: { id: params[:genre_search][:genre_ids] })
		respond_to do |format|
			format.js
		end
	end
end
