Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/posts/arm"
  get "/posts/leg"
  get "/posts/fukkin"
  get "/posts/list"
  root to: 'posts#index'

  get "/posts/show"

  resources :contact do
  end
  resources :users, only: :show
  resources :posts do
    resources :comments, only: [:create]
      collection do
        get 'search'
      end
    end
end

