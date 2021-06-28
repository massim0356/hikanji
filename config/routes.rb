Rails.application.routes.draw do
  resources :kanjis, only:[:index]
  root to: 'kanjis#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
