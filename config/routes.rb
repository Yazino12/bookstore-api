Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show]
      resources :comments, only: [:index, :show, :create, :destroy]
    end
  end

end
