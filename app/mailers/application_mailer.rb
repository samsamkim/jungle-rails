class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'
  helper :application # include application helper

  def welcome_email
    user = params[:user]
    @url  = 'http://localhost:3000/login'
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end


end
