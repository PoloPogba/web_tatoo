Rails.application.routes.draw do
  
  devise_for :users
  resources :whos
  resources :activities
  resources :types
  resources :functions
  
root 'whos#index'

get '/contact', to: 'staticpages#contact'
get '/mentions-legales', to: 'staticpages#mentions'
get '/conditions-générales-ventes', to: 'staticpages#conditions'


end
