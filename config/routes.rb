Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'restaurants#index'
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:create, :new]
  end
end
