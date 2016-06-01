class UserMailer < ApplicationMailer
  default from: 'social.eats.app@gmail.com'

  def invite_to_event(user, sender, event)
    @user = user
    @sender = sender
    @event = event
    mail(to: @user.email, :subject => "You've been invited to #{event.name} by #{sender.first_name}!")
  end

  def invite_to_service_and_event(user, sender, event)
    @user = user
    @sender = sender
    @event = event
    mail(to: @user[:email], :subject => "Invitation to join Social Eats from #{sender.first_name}!")
  end
  def invite_to_service(user, sender)
    @user = user
    @sender = sender
    mail(to: @user[:email], :subject => "Invitation to join Social Eats from #{sender.first_name}!")
  end

end
