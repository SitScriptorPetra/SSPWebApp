Rails.application.routes.draw do
  resources :tablaturas
  resources :traductors
  resources :bands
  resources :companies
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
