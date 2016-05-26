class UserMailer < ApplicationMailer

  def invite_to_event(user, sender, event)
    @user = user
    @sender = sender
    @event = event
    mail(to: @user.email, :subject => "You've been invited to #{event.name} by #{sender.first_name}!")
  end

  def invite_to_service(user, sender, event)
    @user = user
    @sender = sender
    @event = event
    mail(to: @user[:email], :subject => "Invitation to join Social Eats from #{sender.first_name}!")
  end

end
