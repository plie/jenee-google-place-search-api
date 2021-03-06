Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "shortlinks#new"

  resources :shortlinks, only: [:new, :create, :show, :index]

  get ':shortened', to:'links#forward'
end
