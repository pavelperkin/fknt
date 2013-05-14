Fknt::Application.routes.draw do
  resources :groups


  resources :schedules


  resources :days


  resources :articles
  root :to => 'articles#index'
end
