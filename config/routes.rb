Bankpublic::Application.routes.draw do
  get 'bancfinder/find'

  root :to => "home#index"
  get '/home/contact' => "home#contact"
  get '/home/informations' => "home#informations"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
