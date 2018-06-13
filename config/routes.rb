Rails.application.routes.draw do
  resources :flats do
    resources :bookings, only: [:new, :create, :edit, :update]
  end

  resources :users, only: [:edit, :update]

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
