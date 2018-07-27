Rails.application.routes.draw do
  root to: 'pages#home'

  resources :mushrooms
  match '/filter' => 'pages#filter', via: :post
end
