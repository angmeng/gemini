Rails.application.routes.draw do
  
  #get 'admin/homepages', to: "admin_homepages#index"
  
  get 'homepages', to: "homepages#index"
  
  resources :admin_details, only: [:index] do
    collection do
      get 'edit_profile'
      patch 'update_profile'
    end
  end

  resources :class_details, only: [:index] do
    collection do
     
      post 'update_student'
    end
  end

  get 'sign_up', to: "sign_up#new_father"
  post 'sign_up', to: "sign_up#create_father"
  
  get 'teacher/sign_up', to: "sign_up#new_teacher"
  post 'teacher/sign_up', to: "sign_up#create_teacher"
  
  get 'licensee/sign_up', to: "sign_up#new_licensee"
  post 'licensee/sign_up', to: "sign_up#create_licensee"
  
  get 'login', to: "login#father_login"
  post 'login', to: "login#create_father_session"
  delete 'logout', to: "login#destroy_father_session"
  
  get 'admin/login', to: "login#admin_login"
  post 'admin/login', to: "login#create_admin_session"
  delete 'admin/logout', to: "login#destroy_admin_session"
  
  get 'licensee/login', to: "login#licensee_login"
  post 'licensee/login', to: "login#create_licensee_session"
  delete 'licensee/logout', to: "login#destroy_licensee_session"
  
  get 'teacher/login', to: "login#teacher_login"
  post 'teacher/login', to: "login#create_teacher_session"
  delete 'teacher/logout', to: "login#destroy_teacher_session"
  
  resources :announcements
  resources :admins do
    collection do
      get 'homepages'
    end
  end
  resources :mothers
  resources :fathers
  resources :licensees
  resources :students
  resources :teachers
  resources :classrooms
  resources :branches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
