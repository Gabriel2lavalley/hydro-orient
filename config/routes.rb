Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'pages#load_map', as: :authenticated_root
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/log-in'
  get 'pages/load_map'
  get 'pages/contact_us'
  post 'pages/submit_contact_us_details'
end
