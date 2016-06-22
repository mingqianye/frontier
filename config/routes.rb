Rails.application.routes.draw do

  get 'login',  to: 'sessions#new',     as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'sessions/index' #for SSO redirect

  root 'landing#index'
end
