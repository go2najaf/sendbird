Rails.application.routes.draw do
 
  
  
  root 'pages#Index'

  resources :vets
  resources :pets
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :offices, :controllers => {:registrations => "office/registrations"}
  

  get '/home' => 'pages#Home'

  get '/user/:id' => 'pages#Profile'

  get '/explore' => 'pages#Explore'

  get '/office/:id' => 'pages#Office'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
