Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/', to: "games#index", as: 'index'
  get 'games', to: 'games#index', as: 'games'
  get 'game/:id', to: 'games#view', as: 'game'
  post '/fetch_items' => 'games#search_games', as: 'fetch_items'
  post '/add_cart_item' => 'cart#add', as: 'add_item'
  post '/remove_cart_item' => 'cart#remove', as: 'remove_item'
  post '/toggle_cart_item' => 'cart_#toggle', as: 'toggle_item'

end
