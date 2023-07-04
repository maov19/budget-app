Rails.application.routes.draw do
  root "splash#index"

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'password',
    confirmation: 'verification',
    unlock: 'unlock',
    sign_up: 'signup',
    edit: 'edit'
  }, controllers: { registrations: 'registrations'}

  get "categories", to: "categories#index", as: :home
  get "transactions", to: "transactions#transactions_page", as: :transactions
  get "categories/new", to: "categories#new", as: :new_category
  get "transactions/new", to: "transactions#new", as: :new_transaction

  post "categories", to: "categories#create"

  delete "logout", to: "devise/sessions#destroy", as: :logout

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
