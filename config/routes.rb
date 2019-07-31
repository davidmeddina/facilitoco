# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               omniauth_callbacks: 'users/omniauth_callbacks'
             }
  post '/custom_sign_up', to: 'users/omniauth_callbacks#custom_sign_up'
  root 'main#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
