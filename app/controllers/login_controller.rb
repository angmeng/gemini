class LoginController < ApplicationController
  def new
  end
  
  def create
    father = Father.find_by(email: params[:email], password: params[:password])
    
    if father.present?
      flash[:notice] = "Parent You are signed in successfully"
      session[:father_id] = father.id
      redirect_to #to do
    else
      flash[:alert] = "Email or password is incorrect"
      redirect_to action: :new
    end
  end
  
  def destroy
    session[:father_id] = nil
    flash[:notice] = "Parent You are signed out successfully"
    redirect_to action: :new
  end
  
  def admin_login
  end
  
  def create_admin_session
    admin = Admin.find_by(email: params[:email], password: params[:password])
    
    if admin.present?
      flash[:notice] = "Admin You are signed in successfully"
      session[:admin_id] = admin.id
      redirect_to #to do
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
  
  def licensee_login
  end
  
  def create_licensee_session
    licensee = Licensee.find_by(email: params[:email], password: params[:password])
    
    if licensee.present?
      flash[:notice] = "Licensee You are signed in successfully"
      session[:licensee_id] = licensee.id
      redirect_to #
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
  
  def teacher_login
  end
  
  def create_teacher_session
    teacher = Teacher.find_by(email: params[:email], password: params[:password])
    
    if teacher.present?
      flash[:notice] = "Teacher You are signed in successfully"
      session[:teacher_id] = teacher.id
      redirect_to #
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
