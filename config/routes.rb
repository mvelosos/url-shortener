Rails.application.routes.draw do
  get ':short' => 'links#show'
  resources :links
end
