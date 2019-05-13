Rails.application.routes.draw do
  
  root                to: "static_pages#index"

  get     'sobre',    to: 'static_pages#sobre'
  get     'contato',  to: 'static_pages#contato'
  get     'cadastro', to: 'users#new'
  get     'entrar',   to: 'sessions#new'
  post    'entrar',   to: 'sessions#create'
  delete  'sair',     to: 'sessions#destroy'

  resources :users,     only: [:new, :create, :show, :edit, :update]
  resources :contacts
  resources :sessions,  only: [:new, :create, :destroy]

end
