Rails.application.routes.draw do

  devise_for :users, controllers: { :registrations => "registrations" }


  resources :whos
  resources :guests, only: [:new, :create, :show] do
    resources :forms do
      resources :types
    end
  end
  resources :users
<<<<<<< HEAD
  resources :functions

=======
  resources :formfuctions
  
>>>>>>> master

root 'guests#index'

get '/contact', to: 'staticpages#contact'
get '/mentions-legales', to: 'staticpages#mentions'
get '/conditions-générales-ventes', to: 'staticpages#conditions'
get '/aboutus', to: 'staticpages#aboutus'

end
