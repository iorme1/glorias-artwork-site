Rails.application.routes.draw do

  get 'fullcollections/index'

  get 'fullcollections/show'

  devise_for :users, :controllers => { :registrations => "registrations" }

  get 'welcome/index'

  root 'welcome#show'
end
