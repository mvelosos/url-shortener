require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root 'home#index'

  get '/all'   => 'home#all'
  resources :links

  get ':short' => 'links#show'

end
