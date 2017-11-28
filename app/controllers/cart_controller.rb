class CartController < ApplicationController

	def index
		games_in_cart
	end

	def add
		has_item = session[:cart].include? params[:game]
		session[:cart].push(params[:game]) unless has_item
		games_in_cart

		respond_to do |format|
			format.js{ 
				flash.now[:success] = "Successfully added." unless has_item
				flash.now[:danger] = "Item already in cart." unless !has_item
			}
		end
	end

	def remove
		session[:cart].delete(params[:game])
		games_in_cart
	end

	def toggle
		session[:cart].include?(params[:game]) ? remove : add
		games_in_cart
	end

	def games_in_cart
		@cartitems = Game.where(id: session[:cart].compact)
	end
end
