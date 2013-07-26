Questions::Application.routes.draw do
  devise_for :users

  root :to => "questions#index"

  resources :questions do
  #  resources :users
  end
end
