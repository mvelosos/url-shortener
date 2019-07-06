Rails.application.routes.draw do
  root 'home#index'
  get ':short' => 'links#show'
  resources :links
end
