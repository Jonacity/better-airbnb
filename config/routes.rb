Rails.application.routes.draw do
  get 'dashboard/flats'
  get 'dashboard/bookings'

  resources :flats do
    resources :bookings, only: [:new, :create, :edit, :update] do
      member do
        patch '/accept', to: "bookings#accept"
        patch '/decline', to: "bookings#decline"
      end
    end
  end

  resources :users, only: [:edit, :update]

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
