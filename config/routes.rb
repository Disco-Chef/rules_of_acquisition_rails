Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :rules, only: [:index] do
        collection do
          get :random
        end
      end
      resources :rules, only: [:show] do
      end
    end
  end
end
