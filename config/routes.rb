Rails.application.routes.draw do
  resources :products
  post "checkout/create", to: "checkout#create"
  resources :webhooks, only [:create]
  root "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
