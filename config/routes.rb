Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  get 'home/irrig'
  get 'home/cria'
  get 'home/human'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
