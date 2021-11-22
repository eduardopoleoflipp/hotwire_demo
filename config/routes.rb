# frozen_string_literal: true

Rails.application.routes.draw do
  get 'tasks/filtered', to: 'tasks#filtered', as: :filtered_tasks
  resources :projects, only: [:show, :index]

  resources :tasks, except: [:new] do
    member do
      post 'toggle'
    end
  end

  get 'home', to: 'test#home'
  get 'frame_test', to: 'test#frame_test'
  root 'test#home'
end
