class UserMailer < ApplicationMailer

  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: "Registration confirmation for Social Eats!")
  end

  def invite_to_event(user)
    # binding.pry
    @user = user
    mail(to: @user.email, :subject => "You've been invited to an event!")
  end

end
