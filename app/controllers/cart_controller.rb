class CartController < ApplicationController

	def index
		games_in_cart
	end

	def add
		session[:cart].push(params[:game])
		p "adding"
	end

	def remove
		session[:cart].delete(params[:game])
		p "removing"
	end

	def toggle
		session[:cart].include?(params[:game]) ? remove : add
	end

	def games_in_cart
		@cartitems = Game.where(id: session[:cart].compact)
	end
end
