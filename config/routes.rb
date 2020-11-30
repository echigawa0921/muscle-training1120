Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/posts/arm"
  get "/posts/leg"
  get "/posts/fukkin"
  get "/posts/list"
  root to: 'posts#index'
    resources :posts do
    end
  resources :contact do
  end

end
