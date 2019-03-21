Rails.application.routes.draw do

  devise_for :users, controllers: { :registrations => "registrations" }


  
  resources :guests, only: [:new, :create, :show] do
    resources :forms do
      resources :types
    end
  end

  resources :formfuctions do 
    resources :charges
  end

  resources :users

 scope "superadmin", module: "admin", as: 'admin_admins' do 
  resources :admins  
  resources :users
  resources :formfuctions
  
end


root 'guests#index'

get '/contact', to: 'staticpages#contact'
get '/mentions-legales', to: 'staticpages#mentions'
get '/conditions-générales-ventes', to: 'staticpages#conditions'
get '/aboutus', to: 'staticpages#aboutus'
get '/portfolio', to: 'staticpages#portfolio'
get '/cbdrone', to: 'staticpages#cbdrone'

end
