Rails.application.routes.draw do
  # a list of all tasks
  get '/tasks', to: 'tasks#index', as: :tasks
  # a new inputform
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # show one task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # submit new task
  post '/tasks', to: 'tasks#create'
  # disply task to edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # submit edited inputform
  patch '/tasks/:id', to: 'tasks#update'
  # destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
