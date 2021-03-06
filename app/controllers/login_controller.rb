class LoginController < ApplicationController
  def father_login
  end

  def create_father_session
    father = Father.find_by(email: params[:email], password: params[:password])
    
    if father.present?
      flash[:notice] = "Parent You are signed in successfully"
      session[:father_id] = father.id
      redirect_to homepages_path
    else
      flash[:alert] = "Email or password is incorrect"
      redirect_to action: :father_login
    end
  end
  
  def destroy_father_session
    session[:father_id] = nil
    flash[:notice] = "Parent You are signed out successfully"
    redirect_to action: :father_login
  end
  
  #Admin
  def admin_login
  end
  
  def create_admin_session
    admin = Admin.find_by(email: params[:email], password: params[:password])
    
    if admin.present?
      flash[:notice] = "Admin You are signed in successfully"
      session[:admin_id] = admin.id
      redirect_to homepages_admins_path
    else
      flash[:alert] = "Email or password is incorrect"
      redirect_to action: :admin_login
    end
  end
  
  def destroy_admin_session
    session[:admin_id] = nil
    flash[:notice] = "Admin You are signed out successfully"
    redirect_to action: :admin_login
  end
  
  #Licensee
  def licensee_login
  end
  
  def create_licensee_session
    licensee = Licensee.find_by(email: params[:email], password: params[:password])
    
    if licensee.present?
      flash[:notice] = "Licensee You are signed in successfully"
      session[:licensee_id] = licensee.id
      redirect_to homepages_path
    else
      flash[:alert] = "Email or password is incorrect"
      redirect_to action: :licensee_login
    end
  end
  
  def destroy_licensee_session
    session[:licensee_id] = nil
    flash[:notice] = "Licensee You are signed out successfully"
    redirect_to action: :licensee_login
  end
  
  #Teacher
  def teacher_login
  end
  
  def create_teacher_session
    teacher = Teacher.find_by(email: params[:email], password: params[:password])
    
    if teacher.present?
      flash[:notice] = "Teacher You are signed in successfully"
      session[:teacher_id] = teacher.id
      redirect_to homepages_path
    else
      flash[:alert] = "Email or password is incorrect"
      redirect_to action: :teacher_login
    end
  end
  
  def destroy_teacher_session
    session[:teacher_id] = nil
    flash[:notice] = "Teacher You are signed out successfully"
    redirect_to action: :teacher_login
  end
end
