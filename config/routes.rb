Rails.application.routes.draw do

  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'gossips/new'
  get 'gossips/create'
  get 'welcome/:first_name', to: 'dynamic#welcome'
  get 'home/:id', to: 'dynamic#gossip'
  get 'home/user/:first_name', to: 'dynamic#user'
  get '/', to:'static#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'



  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :comments

  resources :sessions, only:[:new,:create,:destroy]
end
