# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'
end
