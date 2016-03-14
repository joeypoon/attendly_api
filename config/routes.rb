Rails.application.routes.draw do
  namespace :v1 do
    resources :students, only: [:create, :show]
  end
end