Fknt::Application.routes.draw do
  devise_for :users

  resources :messages
  resources :users
  resources :topics
  resources :groups
  resources :schedules
  resources :days
  resources :articles
  root :to => 'articles#index'
  match '/faculty' => "static_pages#faculty"
  match '/decanat' => "tags#decanat"
  match '/self_government' => "tags#self_government"
  match '/trade_union' => "tags#trade_union"
end
