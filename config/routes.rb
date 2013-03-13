MoviezClub::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}


 resources :movies do
    resources :clubs
  end


  resources :users do
    resources :clubs
  end
  #get '/movies/new' => 'movies#new'
  post '/movies/search' => 'movies#search'

  root :to => 'home#index'

end
