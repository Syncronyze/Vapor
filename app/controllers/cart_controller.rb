class CartController < ApplicationController

	def index
		games_in_cart
	end

	def add
		session[:cart].push(params[:game])
		games_in_cart
	end

	def remove
		session[:cart].delete(params[:game])
		games_in_cart
	end

	def toggle
		session[:cart].include?(params[:game]) ? remove : add
		games_in_cart
		respond_to do |format|
			format.js
		end
	end

	def games_in_cart
		@cartitems = Game.where(id: session[:cart].compact)
	end
end
