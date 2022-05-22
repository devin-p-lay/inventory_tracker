Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :items, only: %i[ index show edit ]
  resources :warehouses, only: %i[ index show new create ] do
    resources :items, only: %i[ index new show create update destroy]
  end
end
