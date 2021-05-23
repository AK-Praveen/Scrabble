Rails.application.routes.draw do
  root 'leader_boards#index'
  resources :games
  resources :players
end
