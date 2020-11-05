Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/new'
  get 'projects/create'
  get 'projects/show'
  get 'projects/edit'
  get 'projects/update'
  root to: 'home#index'
  devise_for :users
end
