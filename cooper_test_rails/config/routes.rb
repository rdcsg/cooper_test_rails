Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v0 do
        resources :ping, only: [:index], constraints: {format: /(json)/}
      end
  end

  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
    post 'data', controller: :performance_data, action: :create, as: :create
    get 'data', controller: :performance_data, action: :index, as: :index
  end
end
