Photoalbum::Application.routes.draw do
  root :to => 'photos#index'

  resources :photos do 
    collection { get :search }
  end
  resources :comments, only: [:create, :destroy]
end
