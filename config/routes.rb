Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations", :sessions => "users/sessions", :omniauth_callbacks => "users/omniauth_callbacks"}
  root "events#index"
  post "/events/:id/join" => "events#join", as: :join
  post "/search" => "search#new"
  post "/search/users" => "search#users"
  get "/contact" => "users#contact", as: :contact
  delete '/users/sign_out', to: 'users/sessions#destroy', as: 'logout'
  resources :locations do
    member do
      post 'like'
    end
  end
  resources :events
  resources :locations
  resources :events do
    get :autocomplete_location_name, on: :collection
  end
  resources :users
  get 'invite_to_event', to: 'users#invite_to_event', as: :invite_to_event
  resources :registrations, only: :join
  resources :friendships
  resources :inverse_friendships, :controller => 'friendships'
  resources :comments
  resources :tips
  mount ActionCable.server => '/cable'
end
