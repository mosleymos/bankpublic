Bankpublic::Application.routes.draw do
  root :to => "home#index"
  get '/home/contact' => "home#contact"
  get '/home/informations' => "home#informations"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
