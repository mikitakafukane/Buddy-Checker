Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  
  devise_for :students, controllers: {
  sessions:      'students/sessions',
  passwords:     'students/passwords',
  registrations: 'students/registrations'
  }
  
  root 'homes#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
