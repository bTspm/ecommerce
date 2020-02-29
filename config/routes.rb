Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "products#index"

  resources :products do
    collection do
      get :index_v2
    end
  end
end
