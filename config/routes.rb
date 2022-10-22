Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :books, only: [:index, :show, :update, :create, :destroy]
      resources :comments, only: [:index, :show, :create]
    end
  end

end
