Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :todos do
        resources :items
      end
    end
  end

  root to: "todos#index"
end
