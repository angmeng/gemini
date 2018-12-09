class LicenseeMailer < ApplicationMailer

  def welcome_email(licensee_id)
    @licensee = Licensee.find licensee_id
    #attachments["sample.jpg"] = File.read("#{Rails.root}/public/hc05.jpg")
    mail to: @licensee.email, subject: 'Welcome to Kindergarten'
  end
end