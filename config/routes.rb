Rails.application.routes.draw do

  get 'sitemap', :to => 'sitemap#index'

  get 'topics/:id', to: 'topics#show', as: 'topic'

  get 'login',  to: 'sessions#new',     as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'sessions/index' #for SSO redirect

  root 'landing#index'
end
