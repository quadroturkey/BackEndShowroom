Rails.application.routes.draw do
  resources :movies
  resources :users
  resources :user_movies
  resources :genres
  resources :movie_genres
end
