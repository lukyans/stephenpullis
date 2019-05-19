class MessageMailer
  def contact(message)
    @message = message
    mail(to: 'slukyans@gmail.com', from: @message.email, subject: @message.subject)
  end
end
