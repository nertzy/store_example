StoreExample::Application.routes.draw do
  root :to => 'products#index'
  resources :products
  resource :search
end
