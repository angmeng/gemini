class ApplicationController < ActionController::Base
    
    helper_method :current_admin
    def current_admin
        if session[:admin_id].present?
            Admin.find(session[:admin_id])
        else
            nil
        end
    end
    
    helper_method :current_licensee
    def current_licensee
        if session[:licensee_id].present?
            Licensee.find(session[:licensee_id])
        else
            nil
        end
    end
    
    helper_method :current_teacher
    def current_teacher
        if session[:teacher_id].present?
            Teacher.find(session[:teacher_id])
        else 
            nil
        end
    end
    
    helper_method :current_parent
    def current_parent
        if session[:father_id].present?
            Father.find(session[:father_id])
        else
            nil
        end
    end
    
    helper_method :display_name
    def display_name
      if current_admin.present? 
        current_admin.name 
      elsif current_licensee.present? 
        current_licensee.name 
      elsif current_teacher.present?
        current_teacher.name
      elsif current_parent.present?
        current_parent.name
      end 
    end
    
    def authenticate_admin
        if session[:admin_id].present?
            session[:admin_id]
        else
            flash[:alert] = "You have to login as admin before continue."
            redirect_to admin_login_path
        end
    end
    
    def authenticate_licensee
        if session[:licensee_id].present?
            session[:licensee_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to licensee_login_path
        end
    end
    
    def authenticate_teacher
        if session[:teacher_id].present?
            session[:teacher_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to teacher_login_path
        end
    end
    
    def authenticate_parent
        if session[:father_id].present?
            session[:father_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to login_path
        end
    end
end
