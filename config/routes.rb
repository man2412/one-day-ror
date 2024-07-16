Rails.application.routes.draw do
  resources :authors, only: [:index, :show] do
    collection do
      get :high_rank
    end
    member do
      get :show_premium
    end
  end
end
