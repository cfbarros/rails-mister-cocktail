Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only:[:index, :show, :new, :create] do
    resources :doses, only:[:new, :create]
  end
  resources :doses, only:[:destroy]
  # resources :ingredients do
  #   resources :doses
  # end
end
