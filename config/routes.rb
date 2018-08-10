Rails.application.routes.draw do
  root to: 'pages#home'
  resources :pages, only:[:home]
  resources :cocktails, only:[:index, :show, :new, :create] do
    resources :doses, only:[:create]
  end
  # resources :ingredients do
  #   resources :doses
  end
end
