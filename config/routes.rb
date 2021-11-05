# frozen_string_literal: true

Rails.application.routes.draw do
  get 'tasks/filtered', to: 'tasks#filtered', as: :filtered_tasks
  resources :projects, only: [:show, :index]

  resources :tasks, except: [:new] do
    member do
      post 'toggle'
    end
  end
  get 'tasks/:id/row', to: 'tasks#task_row', as: :task_row
  get 'home', to: 'test#home'

  get 'ping', to: 'ping#index'
  root 'test#home'
end
