Rails.application.routes.draw do

  resources :images, only: [:index, :create, :destroy, :new, :edit, :update]

  get 'fullcollections/index'

  get 'fullcollections/show'

  devise_for :users, :controllers => { :registrations => "registrations" }

  get 'welcome/index'

  root 'welcome#show'
end
