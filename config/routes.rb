Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :items, only: %i[ index edit update destroy ]
  resources :warehouses, only: %i[ index show new create ] do
    resources :items, only: %i[ index new show create ]
  end
end
