Rails.application.routes.draw do
 
  root "pages#index"
  get "pages/help"
　resources :users
end
