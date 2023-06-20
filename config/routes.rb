Rails.application.routes.draw do
  devise_for :users
  root to: "animes#index"
  resources :animes, only:[:index,:new,:create,:show]do
    collection do
      get 'search'
    end
  end
end
