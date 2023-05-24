Rails.application.routes.draw do
  resources :top_wares
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  # Defines the root path route ("/")
  # root "articles#index"
end
