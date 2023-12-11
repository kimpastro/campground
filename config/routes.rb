Rails.application.routes.draw do
  root 'pages#index'

  resources :campgrounds, only: [:index, :show]

  scope module: 'api/v1', as: 'api_v1', path: 'api/v1' do
    resources :recently_vieweds, only: [:index, :create]
  end
end
