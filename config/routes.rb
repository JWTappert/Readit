Rails.application.routes.draw do
  resources :stories
  get 'stories/index'
  get 'stories/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
