Rails.application.routes.draw do
  root to: "servers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :servers do
    get :update_from_discord, on: :member

    resources :channels
  end

  resources :users

  resource :bot do
    get :run
    get :stop
    get :log
  end

  resource :monitor do
    get :run
    get :stop
    get :log
  end
end