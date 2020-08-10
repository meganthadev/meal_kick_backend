Rails.application.routes.draw do
  #resources :users
  get 'users/test', to: 'users#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
