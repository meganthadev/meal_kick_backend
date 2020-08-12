Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :create]
    end 
  end 
    namespace :api do
      namespace :v1 do
        resources :categories, only: [:index, :create, :show]
      end 
    end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
