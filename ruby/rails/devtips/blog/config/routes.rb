Rails.application.routes.draw do
  # get 'posts/index'
  resources :posts
  # makes the post index the home page for whole joint
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
