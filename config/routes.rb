Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations", :sessions => "users/sessions", :omniauth_callbacks => "users/omniauth_callbacks"}
  root "locations#index"
  post "/events/:id/join" => "events#join", as: :join
  post "/search" => "search#new"
  post "/search/users" => "search#users"
  get "/contact" => "users#contact", as: :contact
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
  resources :comments
  resources :tips
  mount ActionCable.server => '/cable'
end
