Onsts::Application.routes.draw do
  resources :categories

  resources :statuses

  resources :tickets

  root :to => "tickets#new"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end