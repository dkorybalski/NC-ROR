Rails.application.routes.draw do
  get 'welcome/index'

  resources :citations do
    resources :comments
  end

  root 'welcome#index'
end
