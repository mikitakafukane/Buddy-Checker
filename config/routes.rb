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
  
  namespace :admin do
    resources :students, only: [:index, :show, :edit, :update]
  end


  
  root 'homes#top'
  
  resources :students, only: [:index, :show, :edit, :update]
end
