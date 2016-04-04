class UserMailer < ActionMailer::Base
  default from: 'snow.wolf1305@gmail.com'
 
  def welcome_email(user)
  	@user = user
    
    mail to: @user.email, subject: "Hello!"
  end
  def send_email(user)
    UserMailer.welcome_email(user).deliver
  end
  handle_asynchronously :send_email
end
