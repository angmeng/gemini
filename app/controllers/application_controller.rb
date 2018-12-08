class ApplicationController < ActionController::Base
    
    helper_method :current_admin
    def current_admin
        if session[:admin_id].present?
            Admin.find(session[:admin_id])
        else
            nil
        end
    end
    
    def authenticate_admin
        if session[:admin_id].present?
            session[:admin_id]
        else
            flash[:alert] = "You have to login as admin before continue."
            redirect_to login_path
        end
    end
    
    def authenticate_licensee
        if session[:licensee_id].present?
            session[:licensee_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to login_path
        end
    end
    
    def authenticate_teacher
        if session[:teacher_id].present?
            session[:teacher_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to login_path
        end
    end
    
    def authenticate_father
        if session[:father_id].present?
            session[:father_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to login_path
        end
    end
    
    def authenticate_user
        if session[:father_id].present?
            session[:father_id]
        else
            flash[:alert] = "You have to login before continue."
            redirect_to login_path
        end
    end
end
