class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
	before_action :initialize_cart

	def initialize_cart
		session[:cart] ||= []
	end
end
