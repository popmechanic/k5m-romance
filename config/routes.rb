K5mRomance::Application.routes.draw do
  resources :shareholders
  resources :votes
  resources :questions
  resources :candidates
  
  match '/login' => 'application#login'
  match '/logout' => 'application#logout'
  
  root :to => 'application#index'
  
  
end
