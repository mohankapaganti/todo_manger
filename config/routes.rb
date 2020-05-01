Rails.application.routes.draw do
  get 'users/index'
 resources :todos,:users
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   post "users/:id/login", to: "users#login"
   root to: "home#index"
end
