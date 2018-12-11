class AdminDetailsController < ApplicationController
  layout 'admin'
  before_action  :authenticate_admin
  
  def index
    @admin = Admin.find session[:admin_id]
    if params[:admin_id].present?
      @admins = Admin.where(admin_id: params[:admin_id])
    else
      @admins = Admin.all
    end
  end
  
  def edit_profile
    @admin = Admin.find session[:admin_id]
  end
  
  def update_profile
    @admin = Admin.find session[:admin_id]
   
   if @admin.update(admin_params)
      @admin = Admin.find session[:admin_id]
    
      flash[:notice] ="You have updated admin details successfully."
      redirect_to action: :index
   end
  end
  
  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password)
  end
end
