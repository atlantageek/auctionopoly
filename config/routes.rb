Rails.application.routes.draw do
  root 'lobby#index'
  get 'lobby/index'
  get 'lobby/show'
  get 'lobby/join'
  get 'lobby/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

