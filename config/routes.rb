Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:      'admins/password',
  registrations: 'admins/registrations'
  }
  
  devise_for :students, controllers: {
  sessions:      'students/sessions',
  passwords:      'students/password',
  registrations: 'students/registrations'
  }
  
  #--------admin側----------
  
  namespace :admin do
    resources :students, only: [:index, :show, :edit, :update]
  end
  
  #-------------------------
  
  #--------student側--------
  
  root 'homes#top'
  
  resources :students, only: [:index, :show, :edit, :update]
  resources :groups, only: [:create, :index, :show]
  resources :posts, only: [:create, :show]
  
  #-------------------------
  
  
  
end
