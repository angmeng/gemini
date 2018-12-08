Rails.application.routes.draw do
  resources :announcements
  resources :admins
  resources :mothers
  resources :fathers
  resources :licensees
  resources :students
  resources :teachers
  resources :classrooms
  resources :branches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
