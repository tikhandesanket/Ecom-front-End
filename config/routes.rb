Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  #resources :users do
  #  resources :products
  #end
  resources :products  do
    get :add_to_cart
  end
end
