class NotificationsMailer < ActionMailer::Base
default :from => "anumira.com"
  default :to => "info@iryaa.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end
end
