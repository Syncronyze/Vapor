Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'games', to: 'games#index', as: 'games'
  get 'game/:id', to: 'games#view', as: 'game'

end
