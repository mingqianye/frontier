Rails.application.routes.draw do

  get 'login',  to: 'sessions#new',     as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'blogger_posts', to: 'blogger_posts#show', as: 'blogger_posts'
  get 'items',         to: 'items#show',         as: 'items'
  get 'categories',    to: 'categories#show',    as: 'categories'

  get 'sessions/index' #for SSO redirect

  root 'landing#index'
end
