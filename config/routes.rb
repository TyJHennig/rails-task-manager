  # Rails.application.routes.draw do
  #   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #   get 'tasks', to: 'tasks#index'
  #   get 'tasks/:id/new', to: 'tasks#new'
  #   post 'tasks', to: 'tasks#create'
  #   get '/tasks/:id', to: 'tasks#show', as: 'task'
  #   get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  #   patch 'tasks/:id', to: 'tasks#update'
  #   delete 'tasks/:id', to: 'tasks#destroy'
  # end

Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: 'prefix'
  # See all tasks
  # root to: 'tasks#index', as: 'tasks'
  get 'tasks', to: 'tasks#index', as: 'tasks'
  # Create a task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'
  # See details about one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end
