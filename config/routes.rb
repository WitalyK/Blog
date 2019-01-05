Rails.application.routes.draw do
  get 'home/contacts'
  get 'home/index'
  get '/' => 'home#index'

  resources :articles
  resource  :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
