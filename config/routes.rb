Rails.application.routes.draw do
  resources :tasks
  root 'application#root'
end
