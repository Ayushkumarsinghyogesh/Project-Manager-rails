Rails.application.routes.draw do
  get 'static/welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sessions


  resources :users, only: [:new, :create] do
    resources :tasks, only: [:index, :show, :new]
  end

end
