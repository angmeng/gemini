Rails.application.routes.draw do
  get 'sign_up', to: "sign_up#new"
  post 'sign_up', to: "sign_up#create"
  
  get 'login', to: "login#new"
  post 'login', to: "login#create"
  delete 'logout', to: "login#destroy"
  
  get 'admin/login', to: "login#admin_login"
  post 'admin/login', to: "login#create_admin_session"
  delete 'admin/logout', to: "login#destroy_admin_session"
  
  get 'licensee/login', to: "login#licensee_login"
  post 'licensee/login', to: "login#create_licensee_session"
  delete 'licensee/logout', to: "login#destroy_licensee_session"
  
  get 'teacher/login', to: "login#teacher_login"
  post 'teacher/login', to: "login#create_teacher_session"
  delete 'teacher/logout', to: "login#destroy_teacher_session"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
