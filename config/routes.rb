Rails.application.routes.draw do
  resources :issues, only: [:index, :show] do
    resources :events, except: [:destroy]
  end
end
