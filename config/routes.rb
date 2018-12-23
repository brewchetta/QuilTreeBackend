Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/stories', to: 'stories#index_all', as: 'stories'
      resources :users do
        resources :stories do
          resources :pages
        end
      end
    end
  end

end
