Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :stories do
          resources :pages
        end
      end
    end
  end

end
