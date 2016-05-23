class UserMailer < ApplicationMailer
  default :from => "social.eats.app@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "https://social-eats.herokuapp.com/login"
    mail(to: @user.email, subject: "Welcome to Social Eats!")
  end

  def invite_to_event(user)
    @user = user
    mail(:to => 'kdonovan2005@gmail.com', :subject => 'Testing')
  end

end
