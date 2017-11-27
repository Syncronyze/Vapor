class CartController < ApplicationController

	def index
		games_in_cart
	end

	def add
		session[:cart].push(params[:game]) unless session[:cart].include? params[:game]
	end

	def remove
		session[:cart].delete(params[:game])
	end

	def toggle
		session[:cart].include? params[:game] ? remove : add
	end

	def games_in_cart
		@games = Game.where(session[:cart])
	end
end
