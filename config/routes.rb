Rails.application.routes.draw do
  resources :posts
  resources :destinations
  # get 'posts/show'

  # get 'posts/index'

  # get 'posts/new'

  # get 'posts/create'

  # get 'destinations/show'

  # get 'destinations/index'

  # get 'destinations/new'

  # get 'destinations/create'

  resources :bloggers
  # get 'blogger/index'

  # get 'blogger/show'

  # get 'blogger/new'

  # get 'blogger/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
