Questions::Application.routes.draw do
  root :to => "questions#index"

  resources :questions do
    resources :users
  end
end
