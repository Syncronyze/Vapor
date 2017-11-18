Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/', to: "games#index", as: 'index'
  get 'games', to: 'games#index', as: 'games'
  get 'game/:id', to: 'games#view', as: 'game'
  post '/fetch_items' => 'games#by_genre', as: 'fetch_items'

end
