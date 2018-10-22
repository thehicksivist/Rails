Rails.application.routes.draw do
  resources :products
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # DSL = Domain Specific Language
  root 'products#index'
end
