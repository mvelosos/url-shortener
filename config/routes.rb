require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root 'home#index'

  resources :links, only: [:show, :create]

  get '/all'   => 'home#all'
  get ':short' => 'links#show'

end
