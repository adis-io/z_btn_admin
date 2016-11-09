Rails.application.routes.draw do

  resources :tasks do
    member do
      post :start
      post :finish
    end
  end

  root 'application#root'
end
