Rails.application.routes.draw do

  #map.login '/login', :controller => 'sessions', :action => 'new'
  get 'sessions/new'

  get 'dashboard/index'

  resources :tasks do
    resources :milestones
  end

  Rails.application.routes.draw do
    get    '/signup',  to: 'users#new'
    post   '/signup',  to: 'users#create'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
  end

  root 'tasks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
