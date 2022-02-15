Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #create new
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create', as: :task_new

  #show all
  get 'tasks', to: 'tasks#index'
  #show one
  get 'tasks/:id', to: 'tasks#show', as: :task

  #edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task_update

  #delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
