Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Read All
  get '/tasks', to: 'tasks#index', as: :tasks

  #Create new Task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

   # Read One
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Read the details of task task.details
  # get '/tasks/:details', to 'tasks#details', as: :details_task

    #Update
    get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
    patch '/tasks/:id', to: 'tasks#update'
    delete '/tasks/:id', to: 'tasks#destroy'
end
