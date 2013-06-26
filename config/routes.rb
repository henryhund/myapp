Myapp::Application.routes.draw do
  resources :appointments
  


  resources :calendars


  resources :skills


  resources :profiles


  devise_for :users
  resources :users


  get 'dashboard' => "home#index"

  authenticated :user do
    root :to => "home#loggedin"
  end
  root :to => "home#index"
end