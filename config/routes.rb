Bankpublic::Application.routes.draw do
  get 'bancfinder/find'

  root :to => "home#index"

  #Routes de base du site internet
  get '/home/contact' => "home#contact"
  get '/home/informations' => "home#informations"


  #Routes pour le finder
  get '/home/bancfinder' => "bancfinder#find"

  #Routes pour l'authentification utilisateur
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
