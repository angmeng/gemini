class SignUpController < ApplicationController
  def new_father
    @father = Father.new
  end

  def create_father
    @father = Father.new(father_params)

    respond_to do |format|
      if @father.save
        FatherMailer.welcome_email(@father.id).deliver_now
        format.html { redirect_to login_path, notice: 'Father was successfully created.' }
        format.json { render login_path, status: :created, location: @father }
      else
        format.html { render :new_father }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new_teacher
    @teacher = Teacher.new
  end
  
  def create_teacher
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
        TeacherMailer.welcome_email(@teacher.id).deliver_now
        format.html { redirect_to teacher_login_path, notice: 'Teacher was successfully created.' }
        format.json { render teacher_login_path, status: :created, location: @teacher }
      else
        format.html { render :new_teacher }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new_licensee
    @licensee = Licensee.new
  end
  
  def create_licensee
    @licensee = Licensee.new(licensee_params)

    respond_to do |format|
      if @licensee.save
        LicenseeMailer.welcome_email(@licensee.id).deliver_now
        format.html { redirect_to licensee_login_path, notice: 'Licensee was successfully created.' }
        format.json { render licensee_login_path, status: :created, location: @licensee }
      else
        format.html { render :new_licensee }
        format.json { render json: @licensee.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  def father_params
      params.require(:father).permit(:name, :ic, :gender, :nationality, :contact, :address, :email, :password, :branch_id)
  end
  
  def teacher_params
      params.require(:teacher).permit(:name, :ic, :gender, :nationality, :experiences, :contact, :address, :email, :password, :classroom_id)
  end
  
  def licensee_params
      params.require(:licensee).permit(:name, :ic, :gender, :nationality, :experiences, :contact, :address, :email, :password, :branch_id)
  end
  
end