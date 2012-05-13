K5mRomance::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :shareholders
  resources :votes
  resources :questions
  resources :candidates
  
  match '/login' => 'application#login'
  match '/logout' => 'application#logout'
  
  root :to => 'application#index'
  
  
end
