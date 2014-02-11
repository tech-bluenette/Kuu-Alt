class Mailer < ActionMailer::Base

  default from: "default@gmail.com"

  def welcome_email(current_user)
    @user = current_user
    @url = "http://www.Kuu.com/doesn't_exist"
    mail(to: @user.email, subject: "Welcome to Kuu")
  end

  def spoof_email(current_message, current_user)
  	@user = current_user
  	@message = current_message
  	mail(to: @message.recipient_email, subject: @message.subject, from: @user.email)
  end

  def perform
    mailing = Message.find(params[:id])
    mailing.deliver
  end

end