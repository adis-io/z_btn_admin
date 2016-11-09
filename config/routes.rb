Rails.application.routes.draw do
  post 'tasks', to: 'tasks#create'
end
