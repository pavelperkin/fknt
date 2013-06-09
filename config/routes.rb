Fknt::Application.routes.draw do
  resources :vacancies


  resources :uploads


  devise_for :users

  resources :messages
  resources :users
  resources :topics
  resources :groups
  resources :schedules
  resources :days
  resources :articles
  root :to => redirect("/articles")
  match '/faculty' => "static_pages#faculty"
  match '/decanat' => "tags#decanat"
  match '/self_government' => "tags#self_government"
  match '/trade_union' => "tags#trade_union"
end
