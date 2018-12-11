class ClassDetailsController < ApplicationController
  layout 'licensee'
  before_action :authenticate_licensee
  
  def index
    @classrooms = Classroom.order(:name)
    
    if params[:classroom_id].present?
      @students = Student.where(classroom_id: params[:classroom_id])
    else
      @students = Student.all
    end
    
  end
  
  def update_student
    
    params[:student].each do |student_id, value_params|
      student = Student.find(student_id)
      student.name = value_params[:name]
      student.ic = value_params[:ic]
      student.nationality = value_params[:nationality]
      student.save
      
      flash[:notice] = "Updated successfully"
      
    end
    
    redirect_to class_details_path
    
  end
end
