Rails.application.routes.draw do
  get 'signup/create'
  root to: "home#index"
  #/api/v1/artists
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
