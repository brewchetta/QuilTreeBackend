Rails.application.routes.draw do

  resources :users do
    resources :stories do
      resources :pages
    end
  end

end
