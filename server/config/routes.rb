Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :projects
  get '*path', to: 'home#index', via: :all
end
