Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
    resources :posts do
  end
  resources :contact do
  end

  get '/posts' => 'index2#index'

end
