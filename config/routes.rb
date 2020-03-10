Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end

# list tasks --> index GET /tasks
# view task details  --> show GET /tasks/:id
# add tasks --> new and create GET /tasks/new
# edit tasks --> edit and update GET /tasks/:id/edit and PATCH /tasks/:id
# remove tasks --> destroy DELETE /tasks/:id
