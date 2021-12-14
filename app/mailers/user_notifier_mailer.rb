class UserNotifierMailer < ApplicationMailer
  default from: 'no-reply@Thesis.com'
  def send_signup_email(user)
    @user = user
    mail(to: 'Thesis05@gmail.com',
         subject: 'Thanks for signing up for our amazing app')
  end

  def send_confirmation_email(user)
    @user = user
    mail(to: @user.email,
         subject: 'Confirm your Account')
  end

  def send_verification_code(user, _reqeust)
    @user = user
    mail(to: @user.email,
         subject: 'Verification Code')
  end
end
