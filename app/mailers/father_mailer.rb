class FatherMailer < ApplicationMailer

  def welcome_email(father_id)
    @father = Father.find father_id
    #attachments["sample.jpg"] = File.read("#{Rails.root}/public/hc05.jpg")
    mail to: @father.email, subject: 'Welcome to Kindergarten'
  end
end