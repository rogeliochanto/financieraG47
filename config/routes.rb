Rails.application.routes.draw do
  resources :loans do
    resources :source_of_incomes
  end
  resources :source_of_incomes, only: :index
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
