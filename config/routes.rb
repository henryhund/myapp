Myapp::Application.routes.draw do
  resources :skills


  resources :profiles


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end