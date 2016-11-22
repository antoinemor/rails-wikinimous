Rails.application.routes.draw do

  get    "articles",          to: "articles#index"

  get    "articles/new",      to: "articles#new"
  post   "articles",          to: "articles#create"

  get    "articles/:id/edit", to: "articles#edit", as: :edit_article
  patch  "articles/:id",      to: "articles#update"

  get    "articles/:id",      to: "articles#show", as: :article

  delete "articles/:id",      to: "articles#destroy", as: :delete_article

  # Signup logic
  get    '/login',            to: 'sessions#new'
  post   '/login',            to: 'sessions#create'
  get    '/logout',           to: 'sessions#destroy'


  get    '/signup',           to: 'users#new'
  post   '/users',            to: 'users#create'
end
