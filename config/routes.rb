Rails.application.routes.draw do
  namespace :api do
    get 'tasks/index'
  end

  namespace :api do
    get 'tasks/create'
  end

  namespace :api do
    get 'tasks/update'
  end

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/about',   to: 'welcome#index'
  get '/contact',   to: 'welcome#index'

  namespace :api, format: 'josn' do
    resources :tasks, only: [:index, :create, :update]
  end
end
