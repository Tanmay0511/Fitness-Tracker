Rails.application.routes.draw do
  get 'analytics_dash/index'
  get 'exercise_computation/index'
  match 'weight_logs/index', to: 'weight_logs#index', via: [:get, :post]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'dashboard#index'
  Rails.application.routes.draw do
  get 'analytics_dash/index'
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
