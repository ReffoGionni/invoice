Rails.application.routes.draw do
  root :to => "issues#new"
  resources :services
  resources :users
  resources :customers
  resources :invoices
  resources :issues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
