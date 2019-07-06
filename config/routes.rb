Rails.application.routes.draw do
  root 'home#index'

  get ':short' => 'links#show'
  get '/all'   => 'home#all'

  resources :links
end
