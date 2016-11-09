Rails.application.routes.draw do
  root 'application#root'
  post 'tasks', to: 'tasks#create'
end
