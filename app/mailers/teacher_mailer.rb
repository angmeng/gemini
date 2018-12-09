class TeacherMailer < ApplicationMailer

  def welcome_email(teacher_id)
    @teacher = Teacher.find teacher_id
    #attachments["sample.jpg"] = File.read("#{Rails.root}/public/hc05.jpg")
    mail to: @teacher.email, subject: 'Welcome to Kindergarten'
  end
end

