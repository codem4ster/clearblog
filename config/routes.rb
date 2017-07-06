Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  mount PowerStrip, at: '/ws_cable'

  # Main site pages
  get '*all' => 'home#index'
end
