Rails.application.routes.draw do
  get "post/index"
  get "post/new"
  get "post/create"
  devise_for :users
  root "posts#index"
end
