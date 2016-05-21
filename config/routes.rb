Rails.application.routes.draw do
  root "home#index"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/events/:id/join" => "events#join", as: :join
  post "/search" => "search#new"
  get "/contact" => "users#contact", as: :contact
  resources :locations
  resources :events
  resources :users
  resources :registrations
  resources :comments

  mount ActionCable.server => '/cable'
end
