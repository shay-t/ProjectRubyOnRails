Rails.application.routes.draw do
  resources :emprunts
  resources :materiels
  resources :documents
  resources :auteurs
  resources :adherents
  get 'home/index'
  root 'home#index'

  get "/searchAd" => "adherents#index", :as => :search_ad 
  get "/searchDoc" => "documents#index", :as => :search_doc 
  get "/searchAuth" => "auteurs#index", :as => :search_auth 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
