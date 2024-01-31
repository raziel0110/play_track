Rails.application.routes.draw do
  devise_for :users
  resources :songs

  namespace :api do
    namespace :v1 do
      resources :songs, only: [:index]
    end
  end

  root "public#index"
end
