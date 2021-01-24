Rails.application.routes.draw do
  resources :tubuyakis do
    collection do
      post :confirm
    end
  end
end
