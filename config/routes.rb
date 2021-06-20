Rails.application.routes.draw do
  get 'books/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'books#index'
  resources :books
  
end
