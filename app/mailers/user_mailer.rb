class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = "https://social-eats.herokuapp.com/login"
    mail(to: @user.email, subject: "Welcome to Social Eats!")
  end

  def invite_to_event(user)

  end

end
