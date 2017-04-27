Rails.application.routes.draw do
  resources :tv_shows
  resources :subtitles
  resources :reviews
  resources :directors
  resources :actors
  resources :episodes
  resources :seasons
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end