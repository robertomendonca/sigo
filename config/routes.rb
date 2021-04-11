Rails.application.routes.draw do
  apipie
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :contratos
  resources :normas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do
    resources :dashboards
    resources :normas
    resources :contratos
    post 'update_date', to: 'normas#notifica_update_date'
    devise_for :users, controllers: {sessions: 'users/sessions'}
    devise_scope :user do
      get 'users/current', to: 'users/sessions#show'
    end
  end
end
