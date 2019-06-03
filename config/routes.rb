Rails.application.routes.draw do
  get 'movies', to: 'movies#index'
  get 'movies/new'
  post 'movies', to: 'movies#create'
  get 'movies/:id', to: 'movies#show'
  get 'movies/:id/edit', to: 'movies#edit', as: 'edit_movie'
  patch 'movies/:id', to: 'movies#update', as: 'movie'
  get 'movies/:id/favorite', to: 'movies#favorite', as: 'favorite_movie'
  get 'movies/:id/unfavorite', to: 'movies#unfavorite', as: 'unfavorite_movie'
  delete 'movies/:id', to: 'movies#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
