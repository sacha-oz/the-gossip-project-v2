Rails.application.routes.draw do

  get 'welcome/:first_name', to: 'dynamic#welcome'
  get 'home/:id', to: 'dynamic#gossip'
  get 'home/user/:first_name', to: 'dynamic#gossip'
  get '/', to:'static#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
