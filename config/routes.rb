Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#
# get 'silly', to: 'silly#fun'
# get 'sillyIndex', to: 'silly#index'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :show, :create, :update, :destroy]
    resources :pages, only: [:index, :show, :create, :update, :destroy]
    resources :links, only: [:index, :show, :create, :update, :destroy]
  end
end
