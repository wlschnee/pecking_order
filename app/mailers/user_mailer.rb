class UserMailer < ApplicationMailer

  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: "Registration confirmation for Social Eats!")
  end

  def invite_to_event(user, sender, event)
    @user = user
    @sender = sender
    @event = event
    mail(to: @user.email, :subject => "You've been invited to #{event.name} by #{sender.first_name}!")
  end

end
